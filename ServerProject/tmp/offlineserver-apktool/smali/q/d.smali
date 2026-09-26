.class public final Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lq/d;


# instance fields
.field public final a:Lq/a;

.field public final b:Ljava/util/concurrent/Semaphore;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ljava/lang/Object;

.field public volatile e:Ljava/net/ServerSocket;

.field public volatile f:Ljava/net/Proxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq/g;

    invoke-direct {v0}, Lq/g;-><init>()V

    new-instance v1, Lq/d;

    new-instance v2, Lq/a;

    invoke-direct {v2, v0}, Lq/a;-><init>(Lq/g;)V

    invoke-direct {v1, v2}, Lq/d;-><init>(Lq/a;)V

    sput-object v1, Lq/d;->g:Lq/d;

    return-void
.end method

.method public constructor <init>(Lq/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lq/d;->b:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lq/c;

    const-string v1, "AppDnsBridge"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lq/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lq/d;->d:Ljava/lang/Object;

    iput-object p1, p0, Lq/d;->a:Lq/a;

    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static c(Ljava/net/URL;Lc/i;)Ljava/net/Proxy;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-boolean p1, p1, Lc/i;->b:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/m0;->H1(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move p1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v2, "https"

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ltz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/16 p1, 0x1bb

    .line 47
    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    :cond_1
    move p0, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move p0, v1

    .line 53
    :goto_1
    if-nez p0, :cond_3

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_3
    sget-object p0, Lq/d;->g:Lq/d;

    .line 58
    .line 59
    iget-object p1, p0, Lq/d;->f:Ljava/net/Proxy;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    iget-object p1, p0, Lq/d;->d:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    iget-object v2, p0, Lq/d;->f:Ljava/net/Proxy;

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    :goto_2
    iget-object p0, p0, Lq/d;->f:Ljava/net/Proxy;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    new-instance v2, Ljava/net/ServerSocket;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 83
    .line 84
    const-string v3, "127.0.0.1"

    .line 85
    .line 86
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v0, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {v2, v0, v1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lq/d;->e:Ljava/net/ServerSocket;

    .line 99
    .line 100
    new-instance v0, Ljava/net/Proxy;

    .line 101
    .line 102
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 103
    .line 104
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 105
    .line 106
    const-string v4, "127.0.0.1"

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lq/d;->f:Ljava/net/Proxy;

    .line 119
    .line 120
    iget-object v0, p0, Lq/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 121
    .line 122
    new-instance v1, Lcom/sgscq/vpn/b;

    .line 123
    .line 124
    const/16 v2, 0xe

    .line 125
    .line 126
    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_3
    monitor-exit p1

    .line 134
    move-object p1, p0

    .line 135
    :goto_4
    return-object p1

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0
.end method

.method public static d(Ljava/io/BufferedInputStream;)Lc/f;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v1

    .line 9
    move-object v4, v2

    .line 10
    :goto_0
    const/16 v5, 0x2000

    .line 11
    .line 12
    if-ge v3, v5, :cond_a

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ltz v5, :cond_9

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    if-ne v5, v6, :cond_8

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "\r"

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x1

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sub-int/2addr v6, v7

    .line 44
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_0
    if-nez v4, :cond_1

    .line 49
    .line 50
    move-object v4, v5

    .line 51
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_7

    .line 56
    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "\\s+"

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    array-length v0, p0

    .line 71
    const/4 v3, 0x3

    .line 72
    if-ne v0, v3, :cond_6

    .line 73
    .line 74
    const-string v0, "CONNECT"

    .line 75
    .line 76
    aget-object v3, p0, v1

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    aget-object v0, p0, v0

    .line 86
    .line 87
    const-string v3, "HTTP/"

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    aget-object p0, p0, v7

    .line 97
    .line 98
    const/16 v0, 0x3a

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-lez v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    sub-int/2addr v3, v7

    .line 111
    if-ne v0, v3, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v3, "["

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    const-string v3, "]"

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    sub-int/2addr v3, v7

    .line 149
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :cond_5
    :try_start_0
    new-instance v3, Lc/f;

    .line 154
    .line 155
    add-int/2addr v0, v7

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-direct {v3, v1, p0}, Lc/f;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    move-object v2, v3

    .line 168
    :catch_0
    :cond_6
    :goto_1
    return-object v2

    .line 169
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_8
    int-to-char v5, v5

    .line 175
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_9
    new-instance p0, Ljava/io/IOException;

    .line 181
    .line 182
    const-string v0, "CONNECT \u8bf7\u6c42\u4e0d\u5b8c\u6574"

    .line 183
    .line 184
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 189
    .line 190
    const-string v0, "CONNECT \u8bf7\u6c42\u5934\u8fc7\u5927"

    .line 191
    .line 192
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0
.end method

.method public static e(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "Connection: close\r\n"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public final b(Lc/f;Lc/i;)Ljava/net/Socket;
    .locals 6

    .line 1
    iget-object v0, p1, Lc/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lq/d;->a:Lq/a;

    iget-object v1, v1, Lq/a;->a:Lq/g;

    invoke-virtual {v1, v0, p2}, Lq/g;->b(Ljava/lang/String;Lc/i;)[Ljava/net/InetAddress;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p2, v2

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p1, Lc/f;->b:I

    invoke-direct {v4, v1, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v1, 0x1388

    invoke-virtual {v3, v4, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    invoke-static {v3}, Lq/d;->a(Ljava/net/Socket;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string p1, "DNS \u672a\u8fd4\u56de\u53ef\u7528\u516c\u7f51\u5730\u5740"

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v1
.end method
