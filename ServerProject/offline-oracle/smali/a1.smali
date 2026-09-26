.class public final Lcom/sgscq/vpn/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Z = false

.field public static volatile e:I


# instance fields
.field public a:Ljava/net/DatagramSocket;

.field public volatile b:Z

.field public final c:Lcom/sgscq/vpn/m2;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/m2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/a1;->c:Lcom/sgscq/vpn/m2;

    return-void
.end method

.method public static a([BS)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/a1;->c([B)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(I[B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_6

    const/16 v2, 0x14

    if-ge v1, v2, :cond_6

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit16 v3, v2, 0xc0

    const/16 v4, 0x2e

    const/16 v5, 0xc0

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3

    add-int/2addr p0, v6

    array-length v1, p1

    if-lt p0, v1, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v2, 0x3f

    shl-int/lit8 v1, v1, 0x8

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    invoke-static {p0, p1}, Lcom/sgscq/vpn/a1;->b(I[B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    if-gt v6, v2, :cond_5

    add-int v3, p0, v6

    array-length v4, p1

    if-ge v3, v4, :cond_5

    aget-byte v3, p1, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)I
    .locals 4

    .line 1
    const/16 v0, 0xc

    :goto_0
    add-int/lit8 v1, v0, 0x4

    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_0
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    array-length p0, p0

    return p0
.end method


# virtual methods
.method public final d([B)[B
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0xc

    .line 4
    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {v2, p1}, Lcom/sgscq/vpn/a1;->b(I[B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    move v3, v2

    .line 23
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 24
    .line 25
    array-length v5, p1

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    if-ge v4, v5, :cond_4

    .line 29
    .line 30
    aget-byte v5, p1, v3

    .line 31
    .line 32
    and-int/lit16 v5, v5, 0xff

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    aget-byte v4, p1, v4

    .line 37
    .line 38
    and-int/lit16 v4, v4, 0xff

    .line 39
    .line 40
    shl-int/lit8 v4, v4, 0x8

    .line 41
    .line 42
    add-int/2addr v3, v6

    .line 43
    aget-byte v3, p1, v3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    and-int/lit16 v4, v5, 0xc0

    .line 47
    .line 48
    const/16 v8, 0xc0

    .line 49
    .line 50
    if-ne v4, v8, :cond_3

    .line 51
    .line 52
    add-int/lit8 v4, v3, 0x2

    .line 53
    .line 54
    aget-byte v4, p1, v4

    .line 55
    .line 56
    and-int/lit16 v4, v4, 0xff

    .line 57
    .line 58
    shl-int/lit8 v4, v4, 0x8

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x3

    .line 61
    .line 62
    aget-byte v3, p1, v3

    .line 63
    .line 64
    :goto_1
    and-int/lit16 v3, v3, 0xff

    .line 65
    .line 66
    or-int/2addr v3, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    add-int/2addr v3, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v3, v7

    .line 73
    :goto_2
    iget-object v4, p0, Lcom/sgscq/vpn/a1;->c:Lcom/sgscq/vpn/m2;

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Lcom/sgscq/vpn/m2;->c(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_5

    .line 80
    .line 81
    const/16 v0, -0x7e7d

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/sgscq/vpn/a1;->a([BS)[B

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v5, "DNS ["

    .line 91
    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "] type="

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, " \u2192 10.0.0.1"

    .line 107
    .line 108
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v4, "SGSCQ_DNS"

    .line 116
    .line 117
    invoke-static {v4, v0}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    const/16 v5, -0x7e80

    .line 122
    .line 123
    if-ne v3, v0, :cond_6

    .line 124
    .line 125
    const-string v3, "10.0.0.1"

    .line 126
    .line 127
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {p1}, Lcom/sgscq/vpn/a1;->c([B)I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-static {p1, v2, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    array-length v9, v8

    .line 144
    add-int/2addr v9, v2

    .line 145
    add-int/lit8 v9, v9, 0x10

    .line 146
    .line 147
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2, p1, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    const/16 p1, -0x3ff4

    .line 173
    .line 174
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    .line 183
    const/16 p1, 0x3c

    .line 184
    .line 185
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    const/4 p1, 0x4

    .line 189
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 204
    .line 205
    .line 206
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_3

    .line 208
    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v2, "buildAResponse: "

    .line 212
    .line 213
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v0, v4}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_3
    return-object v1

    .line 220
    :cond_6
    invoke-static {p1, v5}, Lcom/sgscq/vpn/a1;->a([BS)[B

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    return-object p1

    .line 225
    :cond_7
    :goto_4
    return-object v1
.end method

.method public final e()Z
    .locals 5

    .line 1
    const-string v0, "SGSCQ_DNS"

    const-string v1, "Starting DNS server..."

    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sgscq/vpn/a1;->b:Z

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/sgscq/vpn/d;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v2, v4}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v4, "DnsServer"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DNS start interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v1, Lcom/sgscq/vpn/a1;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "OK"

    goto :goto_1

    :cond_0
    const-string v1, "FAILED"

    :goto_1
    const-string v2, "DNS start result: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sgscq/vpn/a1;->d:Z

    return v0
.end method
