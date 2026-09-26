.class public final Lcom/sgscq/vpn/SgscqApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 15

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/sgscq/vpn/n0;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/sgscq/vpn/n0;->c:Z

    .line 12
    .line 13
    sput-object p0, Lcom/sgscq/vpn/n0;->b:Landroid/app/Application;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    sput-wide v1, Lcom/sgscq/vpn/n0;->f:J

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/sgscq/vpn/k0;

    .line 26
    .line 27
    invoke-direct {v2, p0, v1}, Lcom/sgscq/vpn/k0;-><init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/sgscq/vpn/n0;->s(Landroid/content/Context;)Lcom/sgscq/vpn/m0;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "sgscq_crash_v1"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    const-string v6, "java_crash_at"

    .line 47
    .line 48
    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v11

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-boolean v4, v1, Lcom/sgscq/vpn/m0;->c:Z

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    iget-boolean v4, v1, Lcom/sgscq/vpn/m0;->d:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    :cond_1
    move v3, v0

    .line 64
    :cond_2
    if-eqz v3, :cond_3

    .line 65
    .line 66
    iget-wide v3, v1, Lcom/sgscq/vpn/m0;->a:J

    .line 67
    .line 68
    cmp-long v3, v11, v3

    .line 69
    .line 70
    if-gez v3, :cond_3

    .line 71
    .line 72
    move-object v9, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v9, v2

    .line 75
    :goto_0
    const-string v1, "session_tail"

    .line 76
    .line 77
    if-nez v9, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Lcom/sgscq/vpn/n0;->r(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_7

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    :try_start_0
    const-string v3, "p1:"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    const/4 v3, 0x3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    sget-object v3, Lcom/sgscq/vpn/y5;->d:[B

    .line 116
    .line 117
    invoke-static {p0, v2, v3}, Lcom/sgscq/vpn/y5;->c(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_2

    .line 122
    :catch_0
    :cond_7
    :goto_1
    const-string v2, ""

    .line 123
    .line 124
    :goto_2
    move-object v10, v2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v3

    .line 133
    invoke-static {v2}, Lcom/sgscq/vpn/n0;->r(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    sget-boolean v7, Lcom/sgscq/vpn/n0;->d:Z

    .line 146
    .line 147
    sget-boolean v8, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    .line 148
    .line 149
    new-instance v13, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v14, "1|"

    .line 152
    .line 153
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v14, "|"

    .line 160
    .line 161
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v4, "session"

    .line 190
    .line 191
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    .line 193
    .line 194
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    .line 199
    .line 200
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    .line 202
    .line 203
    new-instance v1, Ljava/lang/Thread;

    .line 204
    .line 205
    new-instance v2, Lcom/sgscq/vpn/j0;

    .line 206
    .line 207
    move-object v7, v2

    .line 208
    move-object v8, p0

    .line 209
    invoke-direct/range {v7 .. v12}, Lcom/sgscq/vpn/j0;-><init>(Landroid/app/Application;Lcom/sgscq/vpn/m0;Ljava/lang/String;J)V

    .line 210
    .line 211
    .line 212
    const-string v3, "CrashHarvest"

    .line 213
    .line 214
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 221
    .line 222
    .line 223
    :goto_3
    invoke-static {p0}, Lq/o;->a(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p0}, Lq/e;->a(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "startup"

    .line 230
    .line 231
    const-string v1, "app"

    .line 232
    .line 233
    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/z0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Ljava/lang/Thread;

    .line 237
    .line 238
    new-instance v1, Lcom/sgscq/vpn/b;

    .line 239
    .line 240
    const/4 v2, 0x4

    .line 241
    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    const-string v2, "CloudSessionStartup"

    .line 245
    .line 246
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 250
    .line 251
    .line 252
    return-void
.end method
