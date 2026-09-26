.class public final synthetic Lcom/sgscq/vpn/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/l;
.implements Lcom/sgscq/vpn/u5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sgscq/vpn/y0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/v5;)Lcom/sgscq/vpn/v5;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/sgscq/vpn/t5;

    .line 4
    .line 5
    sget-object v1, Lcom/sgscq/vpn/t5;->k:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v1, p1, Lcom/sgscq/vpn/v5;->a:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const-string v2, "robot_"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v2, 0x6

    .line 27
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-lt v1, v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x3e8

    .line 39
    .line 40
    if-gt v1, v2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 44
    :goto_1
    if-gtz v1, :cond_3

    .line 45
    .line 46
    :goto_2
    const/4 p1, 0x0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    iget-object v2, v0, Lcom/sgscq/vpn/t5;->i:Lcom/sgscq/vpn/s5;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v3, v0, Lcom/sgscq/vpn/t5;->i:Lcom/sgscq/vpn/s5;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/sgscq/vpn/v5;

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    monitor-exit v2

    .line 66
    move-object p1, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/sgscq/vpn/v5;->s:Ljava/util/List;

    .line 71
    .line 72
    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v3}, Lcom/sgscq/vpn/t5;->a(ILjava/util/List;)Lcom/sgscq/vpn/v5;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, v0, Lcom/sgscq/vpn/t5;->i:Lcom/sgscq/vpn/s5;

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    monitor-exit v2

    .line 89
    :goto_3
    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public final b(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/c;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encode()[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->decode([B)Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lo/c;->c(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v1, v0, Lo/c;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lc/e;

    .line 20
    .line 21
    iget-object v1, v1, Lc/e;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/util/AtomicFile;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->decode([B)Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lo/c;->c(Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encode()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    :try_start_2
    iget-object v2, v0, Lo/c;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lc/e;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/sgscq/vpn/battle/runtime/BattleOfflineEnvelope;->encode()[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v3, v2, Lc/e;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Landroid/util/AtomicFile;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    :try_start_4
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_0
    :goto_1
    iget-object v1, v2, Lc/e;->a:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Landroid/util/AtomicFile;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    :try_start_5
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    :try_start_6
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 104
    .line 105
    .line 106
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 107
    :catchall_2
    move-exception p1

    .line 108
    monitor-exit v0

    .line 109
    throw p1
.end method

.method public final c(JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo/l;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v3, p1, v1

    .line 9
    .line 10
    if-lez v3, :cond_1

    .line 11
    .line 12
    cmp-long v1, p3, v1

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Lo/k;

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    move-wide v3, p1

    .line 21
    move-wide v5, p1

    .line 22
    move-wide v7, p3

    .line 23
    invoke-direct/range {v2 .. v8}, Lo/k;-><init>(JJJ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lo/l;->a(Lo/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0

    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    return-void
.end method

.method public final run()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/y0;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    const-string v2, "application/json"

    .line 6
    .line 7
    const-string v3, "Accept"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/sgscq/vpn/y0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    goto/16 :goto_7

    .line 15
    .line 16
    :pswitch_1
    check-cast v4, Lcom/sgscq/vpn/a7;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/net/URL;

    .line 22
    .line 23
    const-string v4, "https://api.sgscq.com/api/v1/public/app/latest"

    .line 24
    .line 25
    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 33
    .line 34
    const/16 v4, 0x2710

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Ljava/io/BufferedReader;

    .line 52
    .line 53
    new-instance v2, Ljava/io/InputStreamReader;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_1
    :try_start_1
    new-instance v1, Lq/j;

    .line 97
    .line 98
    invoke-direct {v1, v2}, Lq/j;-><init>(I)V

    .line 99
    .line 100
    .line 101
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v1

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :pswitch_2
    check-cast v4, Lcom/sgscq/vpn/o3;

    .line 108
    .line 109
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 110
    .line 111
    iget-object v0, v4, Lcom/sgscq/vpn/o3;->b:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v2, Ljava/net/URL;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 123
    .line 124
    const/16 v2, 0x1388

    .line 125
    .line 126
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ne v2, v1, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 143
    .line 144
    .line 145
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_2
    :try_start_3
    new-instance v1, Lq/j;

    .line 151
    .line 152
    invoke-direct {v1, v2}, Lq/j;-><init>(I)V

    .line 153
    .line 154
    .line 155
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :catchall_1
    move-exception v1

    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    .line 159
    .line 160
    throw v1

    .line 161
    :pswitch_3
    check-cast v4, [B

    .line 162
    .line 163
    const-string v0, "upload rejected HTTP "

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    :try_start_4
    new-instance v5, Ljava/net/URL;

    .line 167
    .line 168
    const-string v6, "https://audit.sgscq.com/api/v1/device-events"

    .line 169
    .line 170
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v5}, Lcom/sgscq/vpn/r3;->f(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 174
    .line 175
    .line 176
    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 177
    const/16 v6, 0x9c4

    .line 178
    .line 179
    :try_start_5
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 180
    .line 181
    .line 182
    const/16 v6, 0xdac

    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 185
    .line 186
    .line 187
    const-string v6, "POST"

    .line 188
    .line 189
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/4 v6, 0x1

    .line 193
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 194
    .line 195
    .line 196
    array-length v7, v4

    .line 197
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 198
    .line 199
    .line 200
    const-string v7, "Content-Type"

    .line 201
    .line 202
    const-string v8, "application/json; charset=utf-8"

    .line 203
    .line 204
    invoke-virtual {v5, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 211
    .line 212
    .line 213
    move-result-object v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 214
    :try_start_6
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 215
    .line 216
    .line 217
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const/16 v3, 0xcc

    .line 225
    .line 226
    if-eq v2, v3, :cond_3

    .line 227
    .line 228
    const-string v2, "DeviceAudit"

    .line 229
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v2, v0}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 247
    .line 248
    .line 249
    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 250
    .line 251
    .line 252
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    goto :goto_2

    .line 255
    :catchall_2
    move-exception v0

    .line 256
    if-eqz v2, :cond_4

    .line 257
    .line 258
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :catchall_3
    move-exception v1

    .line 263
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :cond_4
    :goto_1
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 267
    :goto_2
    move-object v1, v5

    .line 268
    goto :goto_4

    .line 269
    :catchall_4
    move-exception v0

    .line 270
    goto :goto_6

    .line 271
    :catch_1
    move-exception v0

    .line 272
    move-object v1, v5

    .line 273
    goto :goto_3

    .line 274
    :catch_2
    move-exception v0

    .line 275
    :goto_3
    const/4 v6, 0x0

    .line 276
    :goto_4
    if-eqz v6, :cond_5

    .line 277
    .line 278
    :try_start_a
    new-instance v2, Lq/k;

    .line 279
    .line 280
    const-string v3, "audit request may have been sent"

    .line 281
    .line 282
    invoke-direct {v2, v3, v0}, Lq/k;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    .line 283
    .line 284
    .line 285
    throw v2

    .line 286
    :catchall_5
    move-exception v0

    .line 287
    goto :goto_5

    .line 288
    :cond_5
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 289
    :goto_5
    move-object v5, v1

    .line 290
    :goto_6
    if-eqz v5, :cond_6

    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 293
    .line 294
    .line 295
    :cond_6
    throw v0

    .line 296
    :goto_7
    check-cast v4, Lp/l;

    .line 297
    .line 298
    iget-object v0, v4, Lp/l;->h:Ljava/lang/String;

    .line 299
    .line 300
    const/high16 v1, 0x10000

    .line 301
    .line 302
    iget-object v2, v4, Lp/l;->b:Lp/i;

    .line 303
    .line 304
    invoke-interface {v2, v0, v1}, Lp/i;->f(Ljava/lang/String;I)[B

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    return-object v0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
