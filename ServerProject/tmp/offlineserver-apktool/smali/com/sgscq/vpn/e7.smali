.class public final synthetic Lcom/sgscq/vpn/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/l;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/a7;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/a7;Ljava/lang/String;Ljava/io/File;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/e7;->a:Lcom/sgscq/vpn/a7;

    iput-object p2, p0, Lcom/sgscq/vpn/e7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/e7;->c:Ljava/io/File;

    iput-object p4, p0, Lcom/sgscq/vpn/e7;->d:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/sgscq/vpn/e7;->c:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/e7;->d:Landroid/app/AlertDialog;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/sgscq/vpn/e7;->a:Lcom/sgscq/vpn/a7;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/net/URL;

    .line 13
    .line 14
    iget-object v5, v1, Lcom/sgscq/vpn/e7;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 24
    .line 25
    const/16 v5, 0x7530

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    .line 29
    .line 30
    const v5, 0x1d4c0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/16 v6, 0xc8

    .line 41
    .line 42
    if-ne v5, v6, :cond_5

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lq/k;

    .line 62
    .line 63
    const-string v2, "\u65e0\u6cd5\u66ff\u6362\u65e7\u4e0b\u8f7d\u6587\u4ef6"

    .line 64
    .line 65
    invoke-direct {v0, v2}, Lq/k;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 73
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x2000

    .line 79
    .line 80
    :try_start_2
    new-array v0, v0, [B

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const-wide/16 v9, 0x0

    .line 84
    .line 85
    move v11, v8

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, -0x1

    .line 91
    if-eq v12, v13, :cond_3

    .line 92
    .line 93
    invoke-virtual {v7, v0, v8, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 94
    .line 95
    .line 96
    add-int/2addr v11, v12

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v12

    .line 101
    if-lez v5, :cond_2

    .line 102
    .line 103
    sub-long v14, v12, v9

    .line 104
    .line 105
    const-wide/16 v16, 0x12c

    .line 106
    .line 107
    cmp-long v14, v14, v16

    .line 108
    .line 109
    if-lez v14, :cond_2

    .line 110
    .line 111
    mul-int/lit8 v9, v11, 0x64

    .line 112
    .line 113
    div-int/2addr v9, v5

    .line 114
    iget-object v10, v3, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v10, Landroid/os/Handler;

    .line 117
    .line 118
    new-instance v14, Lcom/sgscq/vpn/f7;

    .line 119
    .line 120
    invoke-direct {v14, v2, v9, v11, v5}, Lcom/sgscq/vpn/f7;-><init>(Landroid/app/AlertDialog;III)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    move-wide v9, v12

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    .line 130
    .line 131
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v2, v0

    .line 141
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    move-object v3, v0

    .line 147
    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 151
    :catchall_2
    move-exception v0

    .line 152
    move-object v2, v0

    .line 153
    if-eqz v6, :cond_4

    .line 154
    .line 155
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_3
    move-exception v0

    .line 160
    move-object v3, v0

    .line 161
    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_3
    throw v2

    .line 165
    :cond_5
    new-instance v0, Lq/j;

    .line 166
    .line 167
    invoke-direct {v0, v5}, Lq/j;-><init>(I)V

    .line 168
    .line 169
    .line 170
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 171
    :catchall_4
    move-exception v0

    .line 172
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    .line 174
    .line 175
    throw v0
.end method
