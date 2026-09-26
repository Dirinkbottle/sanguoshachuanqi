.class public final Lcom/sgscq/vpn/cloud/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:La/o;


# instance fields
.field public final a:Lcom/sgscq/vpn/cloud/z;

.field public final b:Lm/e;

.field public final c:Lcom/sgscq/vpn/m4;

.field public final d:Lcom/sgscq/vpn/f0;

.field public final e:Lc/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/o;

    invoke-direct {v0}, La/o;-><init>()V

    sput-object v0, Lcom/sgscq/vpn/cloud/u0;->f:La/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/u0;->a:Lcom/sgscq/vpn/cloud/z;

    new-instance v0, Lm/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/u0;->b:Lm/e;

    new-instance v0, Lcom/sgscq/vpn/m4;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/u0;->c:Lcom/sgscq/vpn/m4;

    new-instance v0, Lcom/sgscq/vpn/f0;

    invoke-direct {v0, p1}, Lcom/sgscq/vpn/f0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/u0;->d:Lcom/sgscq/vpn/f0;

    new-instance v0, Lc/e;

    invoke-direct {v0, v1, p1}, Lc/e;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/sgscq/vpn/cloud/u0;->e:Lc/e;

    return-void
.end method

.method public static d(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "guide_"

    .line 21
    .line 22
    const-string v2, "_"

    .line 23
    .line 24
    invoke-static {v1, p0, v2}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, p1, v2}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    sub-int/2addr v6, v7

    .line 112
    const/4 v7, 0x0

    .line 113
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    return-object v0

    .line 136
    :cond_4
    :goto_2
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    if-nez p2, :cond_5

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "cloud"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "local_cloud"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a([B)Lcom/sgscq/vpn/d0;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/u0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 6
    .line 7
    const-string v3, "import"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lcom/sgscq/vpn/cloud/z;->V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/v;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/u0;->b:Lm/e;

    .line 14
    .line 15
    invoke-virtual {v3}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/v;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_16

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_16

    .line 30
    .line 31
    sget-object v3, Lcom/sgscq/vpn/cloud/r0;->a:[B

    .line 32
    .line 33
    const-string v3, "\u5b58\u6863\u5bc6\u94a5\u65e0\u6548"

    .line 34
    .line 35
    iget-object v5, v2, Lcom/sgscq/vpn/cloud/v;->a:[B

    .line 36
    .line 37
    if-eqz v5, :cond_15

    .line 38
    .line 39
    array-length v6, v5

    .line 40
    const/16 v7, 0x20

    .line 41
    .line 42
    if-ne v6, v7, :cond_15

    .line 43
    .line 44
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/v;->b:[B

    .line 45
    .line 46
    if-eqz v2, :cond_14

    .line 47
    .line 48
    array-length v6, v2

    .line 49
    if-eqz v6, :cond_14

    .line 50
    .line 51
    array-length v6, v2

    .line 52
    const/16 v8, 0x40

    .line 53
    .line 54
    if-gt v6, v8, :cond_14

    .line 55
    .line 56
    const-string v6, "debug"

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    const-string v6, "release"

    .line 65
    .line 66
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v2, "\u5b58\u6863\u73af\u5883\u65e0\u6548"

    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    :goto_0
    if-eqz v0, :cond_13

    .line 82
    .line 83
    array-length v6, v0

    .line 84
    sget-object v9, Lcom/sgscq/vpn/cloud/r0;->a:[B

    .line 85
    .line 86
    array-length v10, v9

    .line 87
    add-int/2addr v10, v8

    .line 88
    if-lt v6, v10, :cond_13

    .line 89
    .line 90
    new-instance v6, Ljava/io/DataInputStream;

    .line 91
    .line 92
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .line 93
    .line 94
    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    array-length v10, v9

    .line 101
    new-array v10, v10, [B

    .line 102
    .line 103
    invoke-virtual {v6, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 104
    .line 105
    .line 106
    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_12

    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    const/4 v12, 0x1

    .line 121
    if-ne v10, v12, :cond_11

    .line 122
    .line 123
    if-ne v11, v12, :cond_11

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    new-instance v11, Ljava/lang/String;

    .line 130
    .line 131
    const/16 v13, 0x10

    .line 132
    .line 133
    invoke-static {v6, v10, v13}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    sget-object v15, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    invoke-direct {v11, v14, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_10

    .line 147
    .line 148
    invoke-static {v6, v13, v13}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    const-string v11, "\u5b58\u6863\u6761\u76ee\u6570\u91cf\u65e0\u6548"

    .line 159
    .line 160
    if-ltz v4, :cond_f

    .line 161
    .line 162
    const/16 v14, 0xc8

    .line 163
    .line 164
    if-gt v4, v14, :cond_f

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    array-length v15, v2

    .line 171
    const-string v14, "\u5b58\u6863\u8d26\u53f7\u4e0d\u5339\u914d"

    .line 172
    .line 173
    if-ne v4, v15, :cond_e

    .line 174
    .line 175
    invoke-static {v6, v4, v8}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    array-length v15, v8

    .line 180
    array-length v12, v2

    .line 181
    const/4 v7, 0x0

    .line 182
    if-ne v15, v12, :cond_2

    .line 183
    .line 184
    invoke-static {v8, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    const/4 v2, 0x1

    .line 191
    goto :goto_1

    .line 192
    :cond_2
    move v2, v7

    .line 193
    :goto_1
    if-eqz v2, :cond_d

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-lez v2, :cond_c

    .line 208
    .line 209
    const/high16 v14, 0x6500000

    .line 210
    .line 211
    if-gt v2, v14, :cond_c

    .line 212
    .line 213
    const/16 v14, 0x30

    .line 214
    .line 215
    if-ne v8, v14, :cond_c

    .line 216
    .line 217
    add-int/2addr v2, v13

    .line 218
    if-ne v12, v2, :cond_c

    .line 219
    .line 220
    array-length v2, v9

    .line 221
    const/4 v9, 0x2

    .line 222
    add-int/2addr v2, v9

    .line 223
    add-int/2addr v2, v9

    .line 224
    add-int/2addr v2, v9

    .line 225
    add-int/2addr v2, v10

    .line 226
    add-int/2addr v2, v13

    .line 227
    add-int/lit8 v2, v2, 0x8

    .line 228
    .line 229
    add-int/lit8 v2, v2, 0x4

    .line 230
    .line 231
    add-int/2addr v2, v9

    .line 232
    add-int/2addr v2, v4

    .line 233
    add-int/lit8 v2, v2, 0x4

    .line 234
    .line 235
    add-int/lit8 v2, v2, 0x4

    .line 236
    .line 237
    add-int/lit8 v2, v2, 0x4

    .line 238
    .line 239
    invoke-static {v0, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v2, 0xc

    .line 244
    .line 245
    invoke-static {v6, v2, v2}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-static {v6, v8, v8}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-static {v6, v2, v2}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v6, v12, v12}, Lcom/sgscq/vpn/cloud/r0;->c(Ljava/io/DataInputStream;II)[B

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-nez v6, :cond_b

    .line 266
    .line 267
    :try_start_0
    invoke-static {v9, v5, v4, v7, v0}, Lcom/sgscq/vpn/cloud/r0;->a(I[B[B[B[B)[B

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    array-length v5, v4

    .line 272
    const/16 v6, 0x20

    .line 273
    .line 274
    if-ne v5, v6, :cond_a

    .line 275
    .line 276
    invoke-static {v9, v4, v2, v8, v0}, Lcom/sgscq/vpn/cloud/r0;->a(I[B[B[B[B)[B

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/r0;->b([B)[B

    .line 281
    .line 282
    .line 283
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    new-instance v2, Ljava/lang/String;

    .line 285
    .line 286
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 287
    .line 288
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lcom/sgscq/vpn/cloud/SaveArchiveManager$1;

    .line 292
    .line 293
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/SaveArchiveManager$1;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    sget-object v3, Lcom/sgscq/vpn/cloud/u0;->f:La/o;

    .line 301
    .line 302
    invoke-virtual {v3, v2, v0}, La/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Ljava/util/Map;

    .line 307
    .line 308
    if-eqz v0, :cond_9

    .line 309
    .line 310
    const-string v2, "schema_version"

    .line 311
    .line 312
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/u0;->d(Ljava/lang/Object;)J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    long-to-int v2, v2

    .line 321
    const/4 v3, 0x1

    .line 322
    if-ne v2, v3, :cond_9

    .line 323
    .line 324
    const-string v2, "entries"

    .line 325
    .line 326
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    instance-of v3, v2, Ljava/util/List;

    .line 331
    .line 332
    if-eqz v3, :cond_8

    .line 333
    .line 334
    new-instance v3, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .line 338
    .line 339
    check-cast v2, Ljava/util/List;

    .line 340
    .line 341
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    const-string v5, "exported_at"

    .line 350
    .line 351
    if-eqz v4, :cond_6

    .line 352
    .line 353
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    instance-of v6, v4, Ljava/util/Map;

    .line 358
    .line 359
    if-eqz v6, :cond_5

    .line 360
    .line 361
    check-cast v4, Ljava/util/Map;

    .line 362
    .line 363
    const-string v6, "player"

    .line 364
    .line 365
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/u0;->e(Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 370
    .line 371
    .line 372
    move-result-object v25

    .line 373
    const-string v6, "guide"

    .line 374
    .line 375
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/u0;->e(Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 380
    .line 381
    .line 382
    move-result-object v26

    .line 383
    const-string v6, "passport_uid"

    .line 384
    .line 385
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v17

    .line 393
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    if-nez v6, :cond_4

    .line 398
    .line 399
    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-nez v6, :cond_4

    .line 404
    .line 405
    new-instance v6, Lcom/sgscq/vpn/cloud/s0;

    .line 406
    .line 407
    const-string v7, "nickname"

    .line 408
    .line 409
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    invoke-static {v7}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v18

    .line 417
    const-string v7, "source"

    .line 418
    .line 419
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    invoke-static {v7}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v19

    .line 427
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/u0;->d(Ljava/lang/Object;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v20

    .line 435
    const-string v5, "level"

    .line 436
    .line 437
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-static {v5}, Lcom/sgscq/vpn/cloud/u0;->d(Ljava/lang/Object;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v7

    .line 445
    long-to-int v5, v7

    .line 446
    const-string v7, "fighting"

    .line 447
    .line 448
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    instance-of v7, v4, Ljava/lang/Number;

    .line 453
    .line 454
    if-eqz v7, :cond_3

    .line 455
    .line 456
    check-cast v4, Ljava/lang/Number;

    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 459
    .line 460
    .line 461
    move-result-wide v7

    .line 462
    :goto_3
    move-wide/from16 v23, v7

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 470
    .line 471
    .line 472
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    goto :goto_3

    .line 474
    :catch_0
    const-wide/16 v7, 0x0

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :goto_4
    move-object/from16 v16, v6

    .line 478
    .line 479
    move/from16 v22, v5

    .line 480
    .line 481
    invoke-direct/range {v16 .. v26}, Lcom/sgscq/vpn/cloud/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIDLjava/util/Map;Ljava/util/Map;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto/16 :goto_2

    .line 488
    .line 489
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 490
    .line 491
    const-string v2, "\u5b58\u6863\u89d2\u8272\u6570\u636e\u4e0d\u5b8c\u6574"

    .line 492
    .line 493
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0

    .line 497
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 498
    .line 499
    const-string v2, "\u5b58\u6863\u6761\u76ee\u65e0\u6548"

    .line 500
    .line 501
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-nez v2, :cond_7

    .line 510
    .line 511
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    sget-object v4, Lcom/sgscq/vpn/cloud/r0;->a:[B

    .line 516
    .line 517
    const/16 v4, 0xc8

    .line 518
    .line 519
    if-gt v2, v4, :cond_7

    .line 520
    .line 521
    new-instance v2, Lcom/sgscq/vpn/d0;

    .line 522
    .line 523
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/u0;->d(Ljava/lang/Object;)J

    .line 528
    .line 529
    .line 530
    move-result-wide v4

    .line 531
    invoke-direct {v2, v4, v5, v3}, Lcom/sgscq/vpn/d0;-><init>(JLjava/util/ArrayList;)V

    .line 532
    .line 533
    .line 534
    return-object v2

    .line 535
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 536
    .line 537
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 542
    .line 543
    const-string v2, "\u5b58\u6863\u6761\u76ee\u7f3a\u5931"

    .line 544
    .line 545
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    throw v0

    .line 549
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 550
    .line 551
    const-string v2, "\u4e0d\u652f\u6301\u7684\u5b58\u6863\u6b63\u6587\u7248\u672c"

    .line 552
    .line 553
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw v0

    .line 557
    :cond_a
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 558
    .line 559
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    :catch_1
    move-exception v0

    .line 564
    goto :goto_5

    .line 565
    :catch_2
    move-exception v0

    .line 566
    :goto_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 567
    .line 568
    const-string v3, "\u5b58\u6863\u6821\u9a8c\u5931\u8d25"

    .line 569
    .line 570
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    .line 572
    .line 573
    throw v2

    .line 574
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 575
    .line 576
    const-string v2, "\u5b58\u6863\u5c3e\u90e8\u6570\u636e\u65e0\u6548"

    .line 577
    .line 578
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v0

    .line 582
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 583
    .line 584
    const-string v2, "\u5b58\u6863\u957f\u5ea6\u65e0\u6548"

    .line 585
    .line 586
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw v0

    .line 590
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 591
    .line 592
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 597
    .line 598
    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 603
    .line 604
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    throw v0

    .line 608
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 609
    .line 610
    const-string v2, "\u5b58\u6863\u73af\u5883\u4e0d\u5339\u914d"

    .line 611
    .line 612
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 617
    .line 618
    const-string v2, "\u4e0d\u652f\u6301\u7684\u5b58\u6863\u7248\u672c"

    .line 619
    .line 620
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0

    .line 624
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 625
    .line 626
    const-string v2, "\u4e0d\u652f\u6301\u7684\u5b58\u6863\u683c\u5f0f"

    .line 627
    .line 628
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0

    .line 632
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 633
    .line 634
    const-string v2, "\u5b58\u6863\u683c\u5f0f\u65e0\u6548"

    .line 635
    .line 636
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v0

    .line 640
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 641
    .line 642
    const-string v2, "\u8d26\u53f7\u6807\u7b7e\u65e0\u6548"

    .line 643
    .line 644
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw v0

    .line 648
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 649
    .line 650
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    throw v0

    .line 654
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 655
    .line 656
    const-string v2, "\u5b58\u6863\u73af\u5883\u4e0e\u5f53\u524d\u7248\u672c\u4e0d\u5339\u914d"

    .line 657
    .line 658
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    throw v0
.end method

.method public final b()[B
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/sgscq/vpn/cloud/u0;->b:Lm/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_13

    .line 14
    .line 15
    iget-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/u0;->c:Lcom/sgscq/vpn/m4;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/sgscq/vpn/m4;->m()Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_5

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/sgscq/vpn/k4;

    .line 43
    .line 44
    iget-object v8, v1, Lcom/sgscq/vpn/cloud/u0;->d:Lcom/sgscq/vpn/f0;

    .line 45
    .line 46
    iget-object v9, v5, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v8, v8, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    sget-object v10, Lcom/sgscq/vpn/y5;->a:[B

    .line 51
    .line 52
    if-eqz v9, :cond_0

    .line 53
    .line 54
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-nez v10, :cond_0

    .line 59
    .line 60
    invoke-static {v9}, Lcom/sgscq/vpn/y5;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const/4 v6, 0x0

    .line 73
    :goto_1
    if-nez v6, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/u0;->d:Lcom/sgscq/vpn/f0;

    .line 77
    .line 78
    iget-object v7, v5, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_4

    .line 90
    .line 91
    invoke-static {v7}, Lcom/sgscq/vpn/a5;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    monitor-enter v8

    .line 96
    :try_start_0
    iget-object v9, v6, Lcom/sgscq/vpn/f0;->a:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v10, v6, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    invoke-static {v9, v10, v7}, Lcom/sgscq/vpn/y5;->l(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-eqz v9, :cond_3

    .line 105
    .line 106
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-nez v10, :cond_3

    .line 111
    .line 112
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    invoke-direct {v10, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v7}, Lcom/sgscq/vpn/f0;->d(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    .line 120
    move-result-object v21

    .line 121
    iget-object v6, v6, Lcom/sgscq/vpn/f0;->b:Landroid/content/SharedPreferences;

    .line 122
    .line 123
    invoke-static {v6, v7}, Lcom/sgscq/vpn/y5;->n(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v15

    .line 127
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v6, v1, Lcom/sgscq/vpn/cloud/u0;->c:Lcom/sgscq/vpn/m4;

    .line 129
    .line 130
    iget-object v7, v5, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Lcom/sgscq/vpn/m4;->n(Ljava/lang/String;)Lcom/sgscq/vpn/l4;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-instance v7, Lcom/sgscq/vpn/cloud/s0;

    .line 137
    .line 138
    iget-object v12, v5, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v13, v6, Lcom/sgscq/vpn/l4;->b:Ljava/lang/String;

    .line 141
    .line 142
    iget-boolean v5, v5, Lcom/sgscq/vpn/k4;->f:Z

    .line 143
    .line 144
    if-eqz v5, :cond_2

    .line 145
    .line 146
    const-string v5, "local_cloud"

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    const-string v5, "local"

    .line 150
    .line 151
    :goto_2
    move-object v14, v5

    .line 152
    iget v5, v6, Lcom/sgscq/vpn/l4;->c:I

    .line 153
    .line 154
    iget v6, v6, Lcom/sgscq/vpn/l4;->e:I

    .line 155
    .line 156
    int-to-double v8, v6

    .line 157
    move-object v11, v7

    .line 158
    move/from16 v17, v5

    .line 159
    .line 160
    move-wide/from16 v18, v8

    .line 161
    .line 162
    move-object/from16 v20, v10

    .line 163
    .line 164
    invoke-direct/range {v11 .. v21}, Lcom/sgscq/vpn/cloud/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIDLjava/util/Map;Ljava/util/Map;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    const-string v2, "\u672c\u5730\u5b58\u6863\u4e3a\u7a7a"

    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw v0

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string v2, "\u89d2\u8272 UID \u4e3a\u7a7a"

    .line 186
    .line 187
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_5
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/u0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 192
    .line 193
    invoke-virtual {v4, v2}, Lcom/sgscq/vpn/cloud/z;->s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/x;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-eqz v4, :cond_8

    .line 198
    .line 199
    iget-object v4, v1, Lcom/sgscq/vpn/cloud/u0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v4, v2, v5}, Lcom/sgscq/vpn/cloud/z;->n(Ljava/lang/String;Ljava/util/Map;)[B

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/o0;->b([B)Lcom/sgscq/vpn/cloud/o0;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/o0;->e:Ljava/util/Map;

    .line 217
    .line 218
    new-instance v5, Lcom/sgscq/vpn/cloud/s0;

    .line 219
    .line 220
    iget-object v9, v2, Lcom/sgscq/vpn/cloud/o0;->a:Ljava/lang/String;

    .line 221
    .line 222
    const-string v8, "user_nickname"

    .line 223
    .line 224
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-static {v8}, Lcom/sgscq/vpn/cloud/u0;->h(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eqz v10, :cond_6

    .line 237
    .line 238
    const-string v8, "\u672c\u5730\u89d2\u8272"

    .line 239
    .line 240
    :cond_6
    move-object v10, v8

    .line 241
    const-string v11, "cloud"

    .line 242
    .line 243
    iget-wide v12, v2, Lcom/sgscq/vpn/cloud/o0;->d:J

    .line 244
    .line 245
    const-wide/16 v14, 0x0

    .line 246
    .line 247
    cmp-long v8, v12, v14

    .line 248
    .line 249
    if-lez v8, :cond_7

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 253
    .line 254
    .line 255
    move-result-wide v12

    .line 256
    :goto_3
    const-string v8, "user_level"

    .line 257
    .line 258
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-static {v8}, Lcom/sgscq/vpn/cloud/u0;->d(Ljava/lang/Object;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v14

    .line 266
    long-to-int v14, v14

    .line 267
    invoke-static {v4}, Lcom/sgscq/vpn/w1;->A(Ljava/util/Map;)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    int-to-double v6, v8

    .line 272
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/o0;->f:Ljava/util/Map;

    .line 273
    .line 274
    move-object v8, v5

    .line 275
    move-wide v15, v6

    .line 276
    move-object/from16 v17, v4

    .line 277
    .line 278
    move-object/from16 v18, v2

    .line 279
    .line 280
    invoke-direct/range {v8 .. v18}, Lcom/sgscq/vpn/cloud/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIDLjava/util/Map;Ljava/util/Map;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_12

    .line 291
    .line 292
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/u0;->a:Lcom/sgscq/vpn/cloud/z;

    .line 293
    .line 294
    const-string v4, "export"

    .line 295
    .line 296
    invoke-virtual {v2, v4}, Lcom/sgscq/vpn/cloud/z;->V(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/v;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v4, v2, Lcom/sgscq/vpn/cloud/v;->c:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v4, :cond_11

    .line 305
    .line 306
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_11

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v4

    .line 316
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 319
    .line 320
    .line 321
    const/4 v6, 0x1

    .line 322
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    const-string v6, "schema_version"

    .line 327
    .line 328
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    const-string v7, "exported_at"

    .line 336
    .line 337
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    new-instance v6, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    if-eqz v9, :cond_9

    .line 354
    .line 355
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    check-cast v9, Lcom/sgscq/vpn/cloud/s0;

    .line 360
    .line 361
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 362
    .line 363
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 364
    .line 365
    .line 366
    iget-object v11, v9, Lcom/sgscq/vpn/cloud/s0;->a:Ljava/lang/String;

    .line 367
    .line 368
    const-string v12, "passport_uid"

    .line 369
    .line 370
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const-string v11, "nickname"

    .line 374
    .line 375
    iget-object v12, v9, Lcom/sgscq/vpn/cloud/s0;->b:Ljava/lang/String;

    .line 376
    .line 377
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const-string v11, "source"

    .line 381
    .line 382
    iget-object v12, v9, Lcom/sgscq/vpn/cloud/s0;->c:Ljava/lang/String;

    .line 383
    .line 384
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-wide v11, v9, Lcom/sgscq/vpn/cloud/s0;->d:J

    .line 388
    .line 389
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    iget v11, v9, Lcom/sgscq/vpn/cloud/s0;->e:I

    .line 397
    .line 398
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    const-string v12, "level"

    .line 403
    .line 404
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    iget-wide v11, v9, Lcom/sgscq/vpn/cloud/s0;->f:D

    .line 408
    .line 409
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    const-string v12, "fighting"

    .line 414
    .line 415
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    iget-object v11, v9, Lcom/sgscq/vpn/cloud/s0;->g:Ljava/util/LinkedHashMap;

    .line 419
    .line 420
    const-string v12, "player"

    .line 421
    .line 422
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    iget-object v9, v9, Lcom/sgscq/vpn/cloud/s0;->h:Ljava/util/LinkedHashMap;

    .line 426
    .line 427
    const-string v11, "guide"

    .line 428
    .line 429
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_9
    const-string v7, "entries"

    .line 437
    .line 438
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 446
    .line 447
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iget-object v6, v2, Lcom/sgscq/vpn/cloud/v;->a:[B

    .line 452
    .line 453
    iget-object v7, v2, Lcom/sgscq/vpn/cloud/v;->b:[B

    .line 454
    .line 455
    iget-object v2, v2, Lcom/sgscq/vpn/cloud/v;->c:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    sget-object v8, Lcom/sgscq/vpn/cloud/r0;->a:[B

    .line 462
    .line 463
    if-eqz v6, :cond_10

    .line 464
    .line 465
    array-length v8, v6

    .line 466
    const/16 v9, 0x20

    .line 467
    .line 468
    if-ne v8, v9, :cond_10

    .line 469
    .line 470
    if-eqz v7, :cond_f

    .line 471
    .line 472
    array-length v8, v7

    .line 473
    if-eqz v8, :cond_f

    .line 474
    .line 475
    array-length v8, v7

    .line 476
    const/16 v10, 0x40

    .line 477
    .line 478
    if-gt v8, v10, :cond_f

    .line 479
    .line 480
    const-string v8, "debug"

    .line 481
    .line 482
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    if-nez v8, :cond_b

    .line 487
    .line 488
    const-string v8, "release"

    .line 489
    .line 490
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-eqz v8, :cond_a

    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 498
    .line 499
    const-string v2, "\u5b58\u6863\u73af\u5883\u65e0\u6548"

    .line 500
    .line 501
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :cond_b
    :goto_5
    if-eqz v0, :cond_e

    .line 506
    .line 507
    array-length v8, v0

    .line 508
    if-eqz v8, :cond_e

    .line 509
    .line 510
    array-length v8, v0

    .line 511
    const/high16 v10, 0x6400000

    .line 512
    .line 513
    if-gt v8, v10, :cond_e

    .line 514
    .line 515
    if-ltz v3, :cond_d

    .line 516
    .line 517
    const/16 v8, 0xc8

    .line 518
    .line 519
    if-gt v3, v8, :cond_d

    .line 520
    .line 521
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 522
    .line 523
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 524
    .line 525
    .line 526
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    .line 527
    .line 528
    invoke-direct {v10, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 529
    .line 530
    .line 531
    :try_start_2
    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    .line 533
    .line 534
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    array-length v8, v0

    .line 542
    const/high16 v10, 0x6500000

    .line 543
    .line 544
    if-gt v8, v10, :cond_c

    .line 545
    .line 546
    new-array v8, v9, [B

    .line 547
    .line 548
    sget-object v9, Lcom/sgscq/vpn/cloud/r0;->b:Ljava/security/SecureRandom;

    .line 549
    .line 550
    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 551
    .line 552
    .line 553
    const/16 v10, 0x10

    .line 554
    .line 555
    new-array v11, v10, [B

    .line 556
    .line 557
    invoke-virtual {v9, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 558
    .line 559
    .line 560
    const/16 v12, 0xc

    .line 561
    .line 562
    new-array v13, v12, [B

    .line 563
    .line 564
    invoke-virtual {v9, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 565
    .line 566
    .line 567
    new-array v12, v12, [B

    .line 568
    .line 569
    invoke-virtual {v9, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 570
    .line 571
    .line 572
    array-length v9, v0

    .line 573
    add-int/2addr v9, v10

    .line 574
    array-length v10, v0

    .line 575
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .line 576
    .line 577
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 578
    .line 579
    .line 580
    new-instance v15, Ljava/io/DataOutputStream;

    .line 581
    .line 582
    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 583
    .line 584
    .line 585
    sget-object v1, Lcom/sgscq/vpn/cloud/r0;->a:[B

    .line 586
    .line 587
    invoke-virtual {v15, v1}, Ljava/io/OutputStream;->write([B)V

    .line 588
    .line 589
    .line 590
    const/4 v1, 0x1

    .line 591
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 595
    .line 596
    .line 597
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 598
    .line 599
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    array-length v2, v1

    .line 604
    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v15, v1}, Ljava/io/OutputStream;->write([B)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v15, v11}, Ljava/io/OutputStream;->write([B)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v15, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v15, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 617
    .line 618
    .line 619
    array-length v1, v7

    .line 620
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v15, v7}, Ljava/io/OutputStream;->write([B)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v15, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 627
    .line 628
    .line 629
    const/16 v1, 0x30

    .line 630
    .line 631
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v15, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    const/4 v2, 0x1

    .line 645
    invoke-static {v2, v6, v13, v8, v1}, Lcom/sgscq/vpn/cloud/r0;->a(I[B[B[B[B)[B

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-static {v2, v8, v12, v0, v1}, Lcom/sgscq/vpn/cloud/r0;->a(I[B[B[B[B)[B

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 654
    .line 655
    array-length v4, v1

    .line 656
    add-int/lit8 v4, v4, 0x18

    .line 657
    .line 658
    array-length v5, v3

    .line 659
    add-int/2addr v4, v5

    .line 660
    array-length v5, v0

    .line 661
    add-int/2addr v4, v5

    .line 662
    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write([B)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v12}, Ljava/io/OutputStream;->write([B)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 678
    .line 679
    .line 680
    const/4 v0, 0x0

    .line 681
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    return-object v0

    .line 689
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 690
    .line 691
    const-string v1, "\u5b58\u6863\u538b\u7f29\u5185\u5bb9\u8fc7\u5927"

    .line 692
    .line 693
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    throw v0

    .line 697
    :catchall_1
    move-exception v0

    .line 698
    move-object v1, v0

    .line 699
    :try_start_3
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 700
    .line 701
    .line 702
    goto :goto_6

    .line 703
    :catchall_2
    move-exception v0

    .line 704
    move-object v2, v0

    .line 705
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 706
    .line 707
    .line 708
    :goto_6
    throw v1

    .line 709
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 710
    .line 711
    const-string v1, "\u5b58\u6863\u6761\u76ee\u6570\u91cf\u65e0\u6548"

    .line 712
    .line 713
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    throw v0

    .line 717
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 718
    .line 719
    const-string v1, "\u5b58\u6863\u6b63\u6587\u8fc7\u5927\u6216\u4e3a\u7a7a"

    .line 720
    .line 721
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 726
    .line 727
    const-string v1, "\u8d26\u53f7\u6807\u7b7e\u65e0\u6548"

    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 734
    .line 735
    const-string v1, "\u5b58\u6863\u5bc6\u94a5\u65e0\u6548"

    .line 736
    .line 737
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    throw v0

    .line 741
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 742
    .line 743
    const-string v1, "\u5b58\u6863\u73af\u5883\u4e0e\u5f53\u524d\u7248\u672c\u4e0d\u5339\u914d"

    .line 744
    .line 745
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    throw v0

    .line 749
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 750
    .line 751
    const-string v1, "\u6ca1\u6709\u53ef\u5bfc\u51fa\u7684\u5b58\u6863"

    .line 752
    .line 753
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 758
    .line 759
    const-string v1, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    .line 760
    .line 761
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    throw v0
.end method

.method public final c(Ljava/util/List;)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/u0;->b:Lm/e;

    .line 8
    .line 9
    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_10

    .line 18
    .line 19
    new-instance v3, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v6, "_afdian_owner_token"

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/sgscq/vpn/cloud/t0;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-boolean v7, v5, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 45
    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    iget-object v5, v5, Lcom/sgscq/vpn/cloud/t0;->a:Lcom/sgscq/vpn/cloud/s0;

    .line 49
    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v7, v5, Lcom/sgscq/vpn/cloud/s0;->g:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v6, v5, Lcom/sgscq/vpn/cloud/s0;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v6}, Lcom/sgscq/vpn/cloud/u0;->g(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget-object v5, v5, Lcom/sgscq/vpn/cloud/s0;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    move v5, v0

    .line 77
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_f

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Lcom/sgscq/vpn/cloud/t0;

    .line 88
    .line 89
    if-eqz v7, :cond_e

    .line 90
    .line 91
    iget-boolean v8, v7, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 92
    .line 93
    if-eqz v8, :cond_e

    .line 94
    .line 95
    iget-object v7, v7, Lcom/sgscq/vpn/cloud/t0;->a:Lcom/sgscq/vpn/cloud/s0;

    .line 96
    .line 97
    if-nez v7, :cond_4

    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_4
    iget-object v8, v1, Lcom/sgscq/vpn/cloud/u0;->c:Lcom/sgscq/vpn/m4;

    .line 102
    .line 103
    iget-object v9, v7, Lcom/sgscq/vpn/cloud/s0;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Lcom/sgscq/vpn/m4;->p(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    iget-object v11, v7, Lcom/sgscq/vpn/cloud/s0;->g:Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v12, v7, Lcom/sgscq/vpn/cloud/s0;->c:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/u0;->g(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    iget-object v14, v1, Lcom/sgscq/vpn/cloud/u0;->e:Lc/e;

    .line 121
    .line 122
    invoke-virtual {v14, v9}, Lc/e;->Z(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/n0;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    iget-boolean v15, v15, Lcom/sgscq/vpn/cloud/n0;->a:Z

    .line 127
    .line 128
    if-nez v13, :cond_6

    .line 129
    .line 130
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v16

    .line 134
    if-nez v16, :cond_5

    .line 135
    .line 136
    if-eqz v15, :cond_6

    .line 137
    .line 138
    :cond_5
    const/16 v16, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    move/from16 v16, v0

    .line 142
    .line 143
    :goto_2
    if-eqz v16, :cond_7

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/sgscq/vpn/m4;->d()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v8, v0}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    move-object v0, v9

    .line 154
    :goto_3
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v17

    .line 158
    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-static {v12}, Lcom/sgscq/vpn/cloud/u0;->g(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-nez v12, :cond_9

    .line 166
    .line 167
    if-nez v17, :cond_8

    .line 168
    .line 169
    if-eqz v15, :cond_9

    .line 170
    .line 171
    :cond_8
    move-object v12, v0

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    move-object v12, v9

    .line 174
    :goto_4
    invoke-virtual {v14, v12}, Lc/e;->Z(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/n0;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    iget-object v0, v7, Lcom/sgscq/vpn/cloud/s0;->h:Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    move-object/from16 v17, v3

    .line 181
    .line 182
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/u0;->d:Lcom/sgscq/vpn/f0;

    .line 183
    .line 184
    iget-object v7, v7, Lcom/sgscq/vpn/cloud/s0;->b:Ljava/lang/String;

    .line 185
    .line 186
    if-eqz v13, :cond_a

    .line 187
    .line 188
    :try_start_0
    invoke-virtual {v8, v12, v7}, Lcom/sgscq/vpn/m4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v12}, Lcom/sgscq/vpn/m4;->g(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v7, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v3, v12, v7, v11, v0}, Lcom/sgscq/vpn/f0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v12}, Lcom/sgscq/vpn/m4;->w(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_a
    invoke-virtual {v14, v12}, Lc/e;->w(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v12, v7}, Lcom/sgscq/vpn/m4;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v9, v12, v0}, Lcom/sgscq/vpn/cloud/u0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v3, v12, v11, v0}, Lcom/sgscq/vpn/f0;->g(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catch_0
    move-exception v0

    .line 220
    if-nez v16, :cond_b

    .line 221
    .line 222
    if-nez v10, :cond_c

    .line 223
    .line 224
    :cond_b
    invoke-virtual {v8, v12}, Lcom/sgscq/vpn/m4;->e(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_c
    if-eqz v10, :cond_d

    .line 228
    .line 229
    iget-boolean v2, v15, Lcom/sgscq/vpn/cloud/n0;->a:Z

    .line 230
    .line 231
    if-eqz v2, :cond_d

    .line 232
    .line 233
    iget-object v2, v15, Lcom/sgscq/vpn/cloud/n0;->c:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-nez v3, :cond_d

    .line 240
    .line 241
    iget v3, v15, Lcom/sgscq/vpn/cloud/n0;->d:I

    .line 242
    .line 243
    invoke-virtual {v14, v12, v3, v2}, Lc/e;->a0(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_d
    throw v0

    .line 247
    :cond_e
    :goto_6
    move-object/from16 v17, v3

    .line 248
    .line 249
    :goto_7
    move-object/from16 v3, v17

    .line 250
    .line 251
    const/4 v0, 0x0

    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_f
    return v5

    .line 255
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    const-string v2, "\u8bf7\u5148\u767b\u5f55\u7231\u53d1\u7535"

    .line 258
    .line 259
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0
.end method
