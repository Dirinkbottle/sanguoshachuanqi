.class public final Lq/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La/w;

.field public final b:Lcom/sgscq/vpn/k;

.field public final c:Ljava/security/SecureRandom;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, La/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La/w;-><init>(La/v;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/sgscq/vpn/k;

    .line 8
    .line 9
    const/16 v2, 0x11

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/sgscq/vpn/k;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/security/SecureRandom;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lq/g;->c:Ljava/security/SecureRandom;

    .line 23
    .line 24
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lq/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    iput-object v0, p0, Lq/g;->a:La/w;

    .line 32
    .line 33
    iput-object v1, p0, Lq/g;->b:Lcom/sgscq/vpn/k;

    .line 34
    .line 35
    return-void
.end method

.method public static a(Ljava/net/InetAddress;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    instance-of v2, p0, Ljava/net/Inet4Address;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    if-eqz p0, :cond_9

    const/16 v5, 0xe0

    if-lt p0, v5, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x64

    if-ne p0, v5, :cond_2

    const/16 v6, 0x40

    if-lt v2, v6, :cond_2

    const/16 v6, 0x7f

    if-gt v2, v6, :cond_2

    return v0

    :cond_2
    const/16 v6, 0xc0

    if-ne p0, v6, :cond_3

    if-nez v2, :cond_3

    return v0

    :cond_3
    if-ne p0, v6, :cond_4

    if-nez v2, :cond_4

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v3, :cond_4

    return v0

    :cond_4
    const/16 v6, 0xc6

    if-ne p0, v6, :cond_6

    const/16 v7, 0x12

    if-eq v2, v7, :cond_5

    const/16 v7, 0x13

    if-ne v2, v7, :cond_6

    :cond_5
    return v0

    :cond_6
    if-ne p0, v6, :cond_7

    const/16 v6, 0x33

    if-ne v2, v6, :cond_7

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v5, :cond_7

    return v0

    :cond_7
    const/16 v5, 0xcb

    if-ne p0, v5, :cond_8

    if-nez v2, :cond_8

    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x71

    if-ne p0, v1, :cond_8

    return v0

    :cond_8
    return v4

    :cond_9
    :goto_0
    return v0

    :cond_a
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_d

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v5, p0, 0xfe

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_b

    return v0

    :cond_b
    const/16 v5, 0x20

    if-ne p0, v5, :cond_c

    if-ne v2, v4, :cond_c

    aget-byte p0, v1, v3

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0xd

    if-ne p0, v2, :cond_c

    const/4 p0, 0x3

    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0xb8

    if-ne p0, v1, :cond_c

    return v0

    :cond_c
    return v4

    :cond_d
    :goto_1
    return v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lc/i;)[Ljava/net/InetAddress;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    move-object v3, v0

    .line 21
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/m0;->H1(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_8

    .line 26
    .line 27
    iget-boolean v0, v2, Lc/i;->b:Z

    .line 28
    .line 29
    if-eqz v0, :cond_7

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, v2, Lc/i;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v4, 0x7c

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v0, v1, Lq/g;->b:Lcom/sgscq/vpn/k;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/sgscq/vpn/k;->c()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    iget-object v7, v1, Lq/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lq/f;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-wide v8, v0, Lq/f;->b:J

    .line 72
    .line 73
    cmp-long v8, v8, v5

    .line 74
    .line 75
    if-lez v8, :cond_1

    .line 76
    .line 77
    iget-object v0, v0, Lq/f;->a:[Ljava/net/InetAddress;

    .line 78
    .line 79
    array-length v2, v0

    .line 80
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, [Ljava/net/InetAddress;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    const/16 v0, 0x1c

    .line 93
    .line 94
    const/4 v9, 0x1

    .line 95
    filled-new-array {v9, v0}, [I

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const-wide v11, 0x7fffffffffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    const/4 v13, 0x0

    .line 106
    :goto_1
    const/4 v14, 0x2

    .line 107
    if-ge v13, v14, :cond_4

    .line 108
    .line 109
    aget v14, v9, v13

    .line 110
    .line 111
    :try_start_0
    iget-object v15, v1, Lq/g;->c:Ljava/security/SecureRandom;

    .line 112
    .line 113
    const/high16 v10, 0x10000

    .line 114
    .line 115
    invoke-virtual {v15, v10}, Ljava/util/Random;->nextInt(I)I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-static {v10, v14, v3}, Lcom/sgscq/vpn/p5;->q(IILjava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    iget-object v15, v1, Lq/g;->a:La/w;

    .line 124
    .line 125
    iget-object v1, v2, Lc/i;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Ljava/net/InetAddress;

    .line 128
    .line 129
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {v14, v1}, La/w;->o([BLjava/net/InetAddress;)[B

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1, v10, v3}, Lcom/sgscq/vpn/p5;->N0([BILjava/lang/String;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_3

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    check-cast v10, Lq/h;

    .line 155
    .line 156
    iget-object v14, v10, Lq/h;->a:Ljava/net/InetAddress;

    .line 157
    .line 158
    invoke-static {v14}, Lq/g;->a(Ljava/net/InetAddress;)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_2

    .line 163
    .line 164
    iget-object v14, v10, Lq/h;->a:Ljava/net/InetAddress;

    .line 165
    .line 166
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-wide v14, v10, Lq/h;->b:J

    .line 170
    .line 171
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    goto :goto_2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    goto :goto_3

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v1, Ljava/io/IOException;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-direct {v1, v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    move-object v0, v1

    .line 189
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 190
    .line 191
    move-object/from16 v1, p0

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_4
    const/4 v1, 0x0

    .line 195
    new-array v1, v1, [Ljava/net/InetAddress;

    .line 196
    .line 197
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, [Ljava/net/InetAddress;

    .line 202
    .line 203
    array-length v2, v1

    .line 204
    if-lez v2, :cond_5

    .line 205
    .line 206
    const-wide/16 v2, 0x3e8

    .line 207
    .line 208
    mul-long/2addr v11, v2

    .line 209
    const-wide/32 v2, 0x927c0

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    const-wide/16 v8, 0x7530

    .line 217
    .line 218
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    new-instance v0, Lq/f;

    .line 223
    .line 224
    array-length v8, v1

    .line 225
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    check-cast v8, [Ljava/net/InetAddress;

    .line 230
    .line 231
    add-long/2addr v5, v2

    .line 232
    invoke-direct {v0, v8, v5, v6}, Lq/f;-><init>([Ljava/net/InetAddress;J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_5
    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    if-nez v0, :cond_6

    .line 243
    .line 244
    :goto_4
    return-object v1

    .line 245
    :cond_6
    throw v0

    .line 246
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v1, "APP DNS \u672a\u542f\u7528"

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    const-string v1, "\u81ea\u5b9a\u4e49 DNS \u4ec5\u652f\u6301\u81ea\u6709\u670d\u52a1\u57df\u540d"

    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v0
.end method
