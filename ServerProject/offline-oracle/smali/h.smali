.class public final Lcom/sgscq/vpn/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/s4;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/h;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 18
    .line 19
    const-string p2, "sgscq_afdian"

    .line 20
    .line 21
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iput-object p2, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 34
    .line 35
    const-string p1, "sgscq_player_journal_v1"

    .line 36
    .line 37
    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p2, "context required"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 60
    .line 61
    const-string p2, "sgscq_douyin"

    .line 62
    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 68
    .line 69
    return-void
.end method

.method public static g(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    const-string v0, "sgscq"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "afdian"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/oauth"

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "journal_enc_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uid required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    move-object p0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    const-string v1, "\""

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-le v1, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v3

    .line 37
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :cond_1
    const-string v1, "http://"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const-string v1, "https://"

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_f

    .line 60
    .line 61
    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v4, 0x3

    .line 71
    new-array v5, v4, [Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "sec_user_id"

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    aput-object v6, v5, v7

    .line 77
    .line 78
    const-string v6, "user_id"

    .line 79
    .line 80
    aput-object v6, v5, v3

    .line 81
    .line 82
    const-string v3, "uid"

    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    aput-object v3, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    .line 87
    const-string v3, "UTF-8"

    .line 88
    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_3
    const-string v6, "&"

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    array-length v6, v2

    .line 105
    move v8, v7

    .line 106
    :goto_1
    if-ge v8, v6, :cond_9

    .line 107
    .line 108
    aget-object v9, v2, v8

    .line 109
    .line 110
    const/16 v10, 0x3d

    .line 111
    .line 112
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-ltz v10, :cond_4

    .line 117
    .line 118
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move-object v11, v9

    .line 124
    :goto_2
    if-ltz v10, :cond_5

    .line 125
    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move-object v9, v0

    .line 134
    :goto_3
    move v10, v7

    .line 135
    :goto_4
    if-ge v10, v4, :cond_8

    .line 136
    .line 137
    aget-object v12, v5, v10

    .line 138
    .line 139
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 143
    if-eqz v12, :cond_7

    .line 144
    .line 145
    :try_start_2
    invoke-static {v9, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    goto :goto_6

    .line 150
    :catch_0
    if-nez v9, :cond_6

    .line 151
    .line 152
    move-object v9, v0

    .line 153
    :cond_6
    move-object v2, v9

    .line 154
    goto :goto_6

    .line 155
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_9
    :goto_5
    move-object v2, v0

    .line 162
    :goto_6
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_a

    .line 167
    .line 168
    move-object v0, v2

    .line 169
    goto :goto_8

    .line 170
    :cond_a
    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    if-nez v2, :cond_b

    .line 175
    .line 176
    move-object v1, v0

    .line 177
    goto :goto_7

    .line 178
    :cond_b
    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    :goto_7
    const-string v2, "/user/"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-ltz v2, :cond_e

    .line 189
    .line 190
    add-int/lit8 v2, v2, 0x6

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const/16 v2, 0x2f

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ltz v2, :cond_c

    .line 203
    .line 204
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_c
    invoke-static {v1}, Lcom/sgscq/vpn/h;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    :try_start_4
    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 216
    goto :goto_8

    .line 217
    :catch_1
    if-nez v1, :cond_d

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_d
    move-object v0, v1

    .line 221
    :catch_2
    :cond_e
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_f

    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_f
    invoke-static {p0}, Lcom/sgscq/vpn/h;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->b3(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v2, v0, Lcom/sgscq/vpn/d1;->b:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/sgscq/vpn/d1;->c:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, v0, Lcom/sgscq/vpn/d1;->e:J

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x1f4

    .line 34
    .line 35
    :cond_1
    return v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/sgscq/vpn/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "journal clear commit failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/h;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    sget-object v5, Lc/k;->c:Lc/k;

    .line 11
    .line 12
    sget-object v4, La/i;->a:La/b;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    new-instance v3, Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lc/i;

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    invoke-direct {v3, v0, v7, v6}, Lc/i;-><init>(Ljava/util/Map;Ljava/util/List;Z)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v8, Ld/a0;->A:Ld/x;

    .line 54
    .line 55
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    sget-object v8, Ld/p;->c:Ld/n;

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    .line 68
    .line 69
    sget-object v2, Ld/a0;->p:Ld/x;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    sget-object v2, Ld/a0;->g:Ld/y;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    sget-object v2, Ld/a0;->d:Ld/y;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    sget-object v2, Ld/a0;->e:Ld/y;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    sget-object v2, Ld/a0;->f:Ld/y;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    sget-object v2, Ld/a0;->k:La/l;

    .line 95
    .line 96
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    const-class v9, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-static {v8, v9, v2}, Ld/a0;->b(Ljava/lang/Class;Ljava/lang/Class;La/i0;)Ld/y;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    new-instance v9, La/k;

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    invoke-direct {v9, v10}, La/k;-><init>(I)V

    .line 113
    .line 114
    .line 115
    const-class v11, Ljava/lang/Double;

    .line 116
    .line 117
    invoke-static {v8, v11, v9}, Ld/a0;->b(Ljava/lang/Class;Ljava/lang/Class;La/i0;)Ld/y;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 125
    .line 126
    new-instance v9, La/k;

    .line 127
    .line 128
    invoke-direct {v9, v6}, La/k;-><init>(I)V

    .line 129
    .line 130
    .line 131
    const-class v11, Ljava/lang/Float;

    .line 132
    .line 133
    invoke-static {v8, v11, v9}, Ld/a0;->b(Ljava/lang/Class;Ljava/lang/Class;La/i0;)Ld/y;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    sget-object v8, Ld/o;->b:Ld/n;

    .line 141
    .line 142
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    sget-object v8, Ld/a0;->h:Ld/x;

    .line 146
    .line 147
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    sget-object v8, Ld/a0;->i:Ld/x;

    .line 151
    .line 152
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    new-instance v8, La/m;

    .line 156
    .line 157
    invoke-direct {v8, v2, v10}, La/m;-><init>(La/i0;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, La/i0;->a()La/m;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const-class v9, Ljava/util/concurrent/atomic/AtomicLong;

    .line 165
    .line 166
    invoke-static {v9, v8}, Ld/a0;->a(Ljava/lang/Class;La/i0;)Ld/x;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    new-instance v8, La/m;

    .line 174
    .line 175
    invoke-direct {v8, v2, v6}, La/m;-><init>(La/i0;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, La/i0;->a()La/m;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    const-class v8, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 183
    .line 184
    invoke-static {v8, v2}, Ld/a0;->a(Ljava/lang/Class;La/i0;)Ld/x;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    sget-object v2, Ld/a0;->j:Ld/x;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    sget-object v2, Ld/a0;->l:Ld/y;

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    sget-object v2, Ld/a0;->q:Ld/x;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    sget-object v2, Ld/a0;->r:Ld/x;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    sget-object v2, Ld/a0;->m:La/l;

    .line 212
    .line 213
    const-class v8, Ljava/math/BigDecimal;

    .line 214
    .line 215
    invoke-static {v8, v2}, Ld/a0;->a(Ljava/lang/Class;La/i0;)Ld/x;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    sget-object v2, Ld/a0;->n:La/l;

    .line 223
    .line 224
    const-class v8, Ljava/math/BigInteger;

    .line 225
    .line 226
    invoke-static {v8, v2}, Ld/a0;->a(Ljava/lang/Class;La/i0;)Ld/x;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    sget-object v2, Ld/a0;->o:La/l;

    .line 234
    .line 235
    const-class v8, Lc/m;

    .line 236
    .line 237
    invoke-static {v8, v2}, Ld/a0;->a(Ljava/lang/Class;La/i0;)Ld/x;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    sget-object v2, Ld/a0;->s:Ld/x;

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    sget-object v2, Ld/a0;->t:Ld/x;

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    sget-object v2, Ld/a0;->v:Ld/x;

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    sget-object v2, Ld/a0;->w:Ld/x;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    sget-object v2, Ld/a0;->y:Ld/x;

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    sget-object v2, Ld/a0;->u:Ld/x;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    sget-object v2, Ld/a0;->b:Ld/x;

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    sget-object v2, Ld/e;->b:Ld/a;

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    sget-object v2, Ld/a0;->x:Ld/y;

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    sget-boolean v2, Lg/e;->a:Z

    .line 290
    .line 291
    if-eqz v2, :cond_0

    .line 292
    .line 293
    sget-object v2, Lg/e;->c:Ld/a;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    sget-object v2, Lg/e;->b:Ld/a;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    sget-object v2, Lg/e;->d:Ld/a;

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :cond_0
    sget-object v2, Ld/b;->c:Ld/a;

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    sget-object v2, Ld/a0;->a:Ld/x;

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    new-instance v2, Ld/d;

    .line 319
    .line 320
    invoke-direct {v2, v3, v10}, Ld/d;-><init>(Lc/i;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    new-instance v2, Ld/m;

    .line 327
    .line 328
    invoke-direct {v2, v3}, Ld/m;-><init>(Lc/i;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    new-instance v8, Ld/d;

    .line 335
    .line 336
    invoke-direct {v8, v3, v6}, Ld/d;-><init>(Lc/i;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    sget-object v2, Ld/a0;->B:Ld/a;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    new-instance v9, Ld/u;

    .line 348
    .line 349
    move-object v2, v9

    .line 350
    move-object v6, v8

    .line 351
    invoke-direct/range {v2 .. v7}, Ld/u;-><init>(Lc/i;La/b;Lc/k;Ld/d;Ljava/util/List;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 361
    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v2, "sgscq_cloud_session_v1"

    .line 367
    .line 368
    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v2, "session_encrypted"

    .line 377
    .line 378
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    .line 384
    .line 385
    new-instance v0, Ljava/lang/Thread;

    .line 386
    .line 387
    new-instance v2, Lcom/sgscq/vpn/b;

    .line 388
    .line 389
    invoke-direct {v2, p0, v10}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    .line 390
    .line 391
    .line 392
    const-string v3, "sgscq-cloud-logout"

    .line 393
    .line 394
    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    .line 399
    .line 400
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->b3(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    iget-boolean v4, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-boolean v4, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-boolean v4, v0, Lcom/sgscq/vpn/f;->e:Z

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    iget v4, v0, Lcom/sgscq/vpn/f;->f:I

    .line 34
    .line 35
    if-lt v4, p1, :cond_1

    .line 36
    .line 37
    iget-wide v4, v0, Lcom/sgscq/vpn/f;->j:J

    .line 38
    .line 39
    cmp-long p1, v2, v4

    .line 40
    .line 41
    if-gtz p1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lcom/sgscq/vpn/y5;->c:[B

    .line 4
    .line 5
    invoke-static {v0, p2, v1}, Lcom/sgscq/vpn/y5;->i(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/sgscq/vpn/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string p2, "journal commit failed"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    check-cast p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "journal encrypt failed"

    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final f()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->b3(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    move-result-object v0

    iget-boolean v2, v0, Lcom/sgscq/vpn/f;->c:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/sgscq/vpn/f;->d:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/sgscq/vpn/f;->f:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/sgscq/vpn/f;->j:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->b3(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x2

    .line 16
    aget-object v1, v1, v3

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x3

    .line 29
    aget-object v1, v1, v3

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x4

    .line 42
    aget-object v0, v0, v1

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
.end method

.method public final j()Lcom/sgscq/vpn/f;
    .locals 11

    .line 1
    new-instance v0, Lcom/sgscq/vpn/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v2, "user_id"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v0, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "name"

    .line 19
    .line 20
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "logged_in"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput-boolean v2, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 34
    .line 35
    const-string v2, "sponsor"

    .line 36
    .line 37
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput-boolean v2, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 42
    .line 43
    const-string v2, "level"

    .line 44
    .line 45
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v0, Lcom/sgscq/vpn/f;->f:I

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    const-string v2, "amount"

    .line 58
    .line 59
    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    iput-wide v7, v0, Lcom/sgscq/vpn/f;->g:D

    .line 68
    .line 69
    const-string v2, "plan_name"

    .line 70
    .line 71
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v0, Lcom/sgscq/vpn/f;->h:Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, "checked_at"

    .line 78
    .line 79
    const-wide/16 v7, 0x0

    .line 80
    .line 81
    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    iput-wide v9, v0, Lcom/sgscq/vpn/f;->i:J

    .line 86
    .line 87
    const-string v2, "valid_until"

    .line 88
    .line 89
    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    iput-wide v7, v0, Lcom/sgscq/vpn/f;->j:J

    .line 94
    .line 95
    const-string v2, "signature"

    .line 96
    .line 97
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v0, Lcom/sgscq/vpn/f;->k:Ljava/lang/String;

    .line 102
    .line 103
    iget-boolean v1, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    new-instance v1, Lm/e;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 110
    .line 111
    const/4 v3, 0x5

    .line 112
    invoke-direct {v1, v3, v2}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_0

    .line 124
    .line 125
    iput-boolean v4, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 126
    .line 127
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/f;->k:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, v0, Lcom/sgscq/vpn/f;->k:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->m(Lcom/sgscq/vpn/f;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 150
    .line 151
    xor-int/lit8 v1, v1, 0x1

    .line 152
    .line 153
    :goto_1
    if-nez v1, :cond_3

    .line 154
    .line 155
    iput-boolean v4, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 156
    .line 157
    iput v4, v0, Lcom/sgscq/vpn/f;->f:I

    .line 158
    .line 159
    iput-wide v5, v0, Lcom/sgscq/vpn/f;->g:D

    .line 160
    .line 161
    :cond_3
    return-object v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/sgscq/vpn/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 22
    .line 23
    sget-object v1, Lcom/sgscq/vpn/y5;->c:[B

    .line 24
    .line 25
    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/y5;->c(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "journal decrypt failed"

    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final l()Lcom/sgscq/vpn/d1;
    .locals 9

    .line 1
    new-instance v0, Lcom/sgscq/vpn/d1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/d1;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v2, "user_id"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v0, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "bound"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput-boolean v2, v0, Lcom/sgscq/vpn/d1;->b:Z

    .line 26
    .line 27
    const-string v2, "following"

    .line 28
    .line 29
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput-boolean v2, v0, Lcom/sgscq/vpn/d1;->c:Z

    .line 34
    .line 35
    const-string v2, "checked_at"

    .line 36
    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    iput-wide v7, v0, Lcom/sgscq/vpn/d1;->d:J

    .line 44
    .line 45
    const-string v2, "valid_until"

    .line 46
    .line 47
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    iput-wide v5, v0, Lcom/sgscq/vpn/d1;->e:J

    .line 52
    .line 53
    const-string v2, "signature"

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/sgscq/vpn/d1;->g:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, v0, Lcom/sgscq/vpn/d1;->g:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->n(Lcom/sgscq/vpn/d1;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/sgscq/vpn/d1;->b:Z

    .line 82
    .line 83
    xor-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    :goto_1
    if-nez v1, :cond_2

    .line 86
    .line 87
    iput-boolean v4, v0, Lcom/sgscq/vpn/d1;->c:Z

    .line 88
    .line 89
    :cond_2
    return-object v0
.end method

.method public final m(Lcom/sgscq/vpn/f;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const-string v1, "HmacSHA256"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "|"

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v5, p1, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v5, p1, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v5, p1, Lcom/sgscq/vpn/f;->d:Z

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v5, p1, Lcom/sgscq/vpn/f;->f:I

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v5, p1, Lcom/sgscq/vpn/f;->g:D

    .line 47
    .line 48
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v5, p1, Lcom/sgscq/vpn/f;->i:J

    .line 59
    .line 60
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v5, p1, Lcom/sgscq/vpn/f;->j:J

    .line 67
    .line 68
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x1

    .line 85
    aget-object v5, v5, v6

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v7, 0x3

    .line 98
    aget-object v5, v5, v7

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v4, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    array-length v1, p1

    .line 147
    const/4 v2, 0x0

    .line 148
    move v3, v2

    .line 149
    :goto_0
    if-ge v3, v1, :cond_0

    .line 150
    .line 151
    aget-byte v4, p1, v3

    .line 152
    .line 153
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 154
    .line 155
    const-string v7, "%02x"

    .line 156
    .line 157
    new-array v8, v6, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    aput-object v4, v8, v2

    .line 164
    .line 165
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object p1

    .line 180
    :catch_0
    const-string p1, ""

    .line 181
    .line 182
    return-object p1
.end method

.method public final n(Lcom/sgscq/vpn/d1;)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "UTF-8"

    const-string v1, "HmacSHA256"

    iget-object v2, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    const-string v3, "|"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/sgscq/vpn/d1;->b:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/sgscq/vpn/d1;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/sgscq/vpn/d1;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/sgscq/vpn/d1;->e:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Lcom/sgscq/vpn/cloud/m0;->G2(Landroid/content/Context;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    const-string v9, "%02x"

    if-ge v7, v5, :cond_0

    :try_start_1
    aget-byte v10, v3, v7

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {v11, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x7c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public final p(Lcom/sgscq/vpn/SettingsActivity;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lcom/sgscq/vpn/AfdianOAuthActivity;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double/2addr v2, v4

    .line 40
    double-to-int v2, v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 53
    .line 54
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "oauth_state"

    .line 59
    .line 60
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    .line 66
    .line 67
    const-string v2, "https://ifdian.net/oauth2/authorize"

    .line 68
    .line 69
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "response_type"

    .line 78
    .line 79
    const-string v4, "code"

    .line 80
    .line 81
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const/4 v5, 0x2

    .line 91
    aget-object v4, v4, v5

    .line 92
    .line 93
    const-string v5, "client_id"

    .line 94
    .line 95
    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x4

    .line 103
    aget-object v3, v3, v4

    .line 104
    .line 105
    const-string v3, "https://oauth.sgscq.com/afdian/oauth.html"

    .line 106
    .line 107
    const-string v4, "redirect_uri"

    .line 108
    .line 109
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    .line 111
    .line 112
    const-string v3, "scope"

    .line 113
    .line 114
    const-string v4, "basic"

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    .line 118
    .line 119
    const-string v3, "state"

    .line 120
    .line 121
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "url"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    const-string v1, "AfdianAuth"

    .line 138
    .line 139
    const-string v2, "openLogin: \u4f7f\u7528\u5e94\u7528\u5185 OAuth WebView"

    .line 140
    .line 141
    invoke-static {v1, v2}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string v0, "Afdian OAuth credentials are not configured"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public final q()Lcom/sgscq/vpn/d1;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/sgscq/vpn/d1;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    .line 18
    .line 19
    :try_start_0
    new-instance v2, Lcom/sgscq/vpn/cloud/z;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "douyin"

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/sgscq/vpn/cloud/z;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/i;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "verified"

    .line 33
    .line 34
    iget-object v3, v1, Lcom/sgscq/vpn/cloud/i;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v1, v1, Lcom/sgscq/vpn/cloud/i;->b:Z

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    if-nez v1, :cond_1

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput-boolean v1, v0, Lcom/sgscq/vpn/d1;->c:Z

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iput-wide v1, v0, Lcom/sgscq/vpn/d1;->d:J

    .line 64
    .line 65
    const-wide/32 v3, 0x240c8400

    .line 66
    .line 67
    .line 68
    add-long/2addr v1, v3

    .line 69
    iput-wide v1, v0, Lcom/sgscq/vpn/d1;->e:J

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    iput-object v1, v0, Lcom/sgscq/vpn/d1;->f:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->n(Lcom/sgscq/vpn/d1;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/sgscq/vpn/d1;->g:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->t(Lcom/sgscq/vpn/d1;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/Exception;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "\u6821\u9a8c\u5931\u8d25\uff1a"

    .line 91
    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    .line 111
    .line 112
    const-string v1, "\u672a\u7ed1\u5b9a\u6296\u97f3\u53f7"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/f;
    .locals 13

    .line 1
    new-instance v0, Lcom/sgscq/vpn/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, p1

    .line 14
    :goto_0
    iput-object p2, v0, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    iput-wide v1, v0, Lcom/sgscq/vpn/f;->i:J

    .line 24
    .line 25
    const-wide/32 v3, 0x240c8400

    .line 26
    .line 27
    .line 28
    add-long/2addr v1, v3

    .line 29
    iput-wide v1, v0, Lcom/sgscq/vpn/f;->j:J

    .line 30
    .line 31
    iget-object v1, p0, Lcom/sgscq/vpn/h;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/m0;->t0(Landroid/content/Context;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v5, 0x0

    .line 38
    aget-object v2, v2, v5

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v6, v0, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iput-boolean p2, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 59
    .line 60
    const/4 v2, 0x6

    .line 61
    iput v2, v0, Lcom/sgscq/vpn/f;->f:I

    .line 62
    .line 63
    iget-wide v6, v0, Lcom/sgscq/vpn/f;->g:D

    .line 64
    .line 65
    const-wide v8, 0x40c3880000000000L    # 10000.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    iput-wide v6, v0, Lcom/sgscq/vpn/f;->g:D

    .line 75
    .line 76
    const-string v2, "\u4f5c\u8005\u8d26\u53f7"

    .line 77
    .line 78
    iput-object v2, v0, Lcom/sgscq/vpn/f;->h:Ljava/lang/String;

    .line 79
    .line 80
    const-wide v6, 0x7fffffffffffffffL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    iput-wide v6, v0, Lcom/sgscq/vpn/f;->j:J

    .line 86
    .line 87
    move v2, p2

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    move v2, v5

    .line 90
    :goto_2
    if-eqz v2, :cond_5

    .line 91
    .line 92
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->m(Lcom/sgscq/vpn/f;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, v0, Lcom/sgscq/vpn/f;->k:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/h;->s(Lcom/sgscq/vpn/f;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_5
    new-instance v6, Lcom/sgscq/vpn/cloud/z;

    .line 103
    .line 104
    invoke-direct {v6, v1}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    const-string v7, "GET"

    .line 108
    .line 109
    const-string v8, "/identity/me"

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    const-string v10, "application/json"

    .line 113
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual/range {v6 .. v11}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "entitlement"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, La/t;->o(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    iget-object v7, v1, La/t;->a:Lc/s;

    .line 137
    .line 138
    if-eqz v6, :cond_6

    .line 139
    .line 140
    invoke-virtual {v1, v2}, La/t;->m(Ljava/lang/String;)La/q;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    instance-of v6, v6, La/t;

    .line 148
    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    invoke-virtual {v7, v2}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, La/t;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    new-instance v2, La/t;

    .line 159
    .line 160
    invoke-direct {v2}, La/t;-><init>()V

    .line 161
    .line 162
    .line 163
    :goto_4
    const-string v6, "access"

    .line 164
    .line 165
    invoke-virtual {v1, v6}, La/t;->o(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_7

    .line 170
    .line 171
    invoke-virtual {v1, v6}, La/t;->m(Ljava/lang/String;)La/q;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    instance-of v1, v1, La/t;

    .line 179
    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    invoke-virtual {v7, v6}, Lc/s;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, La/t;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    new-instance v1, La/t;

    .line 190
    .line 191
    invoke-direct {v1}, La/t;-><init>()V

    .line 192
    .line 193
    .line 194
    :goto_5
    const-string v6, "active"

    .line 195
    .line 196
    invoke-static {v2, v6}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    const-string v7, "level"

    .line 201
    .line 202
    invoke-static {v2, v7, v5}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    const-string v8, "plan_name"

    .line 207
    .line 208
    invoke-static {v2, v8, p1}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v8, "updated_at"

    .line 213
    .line 214
    const-wide/16 v9, 0x0

    .line 215
    .line 216
    invoke-static {v2, v8, v9, v10}, Lcom/sgscq/vpn/cloud/z;->u(La/t;Ljava/lang/String;J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v11

    .line 220
    const-string v2, "login_blocked"

    .line 221
    .line 222
    invoke-static {v1, v2}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    const-string v8, "cloud_blocked"

    .line 227
    .line 228
    invoke-static {v1, v8}, Lcom/sgscq/vpn/cloud/z;->d(La/t;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    iput-boolean v6, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 233
    .line 234
    iput v7, v0, Lcom/sgscq/vpn/f;->f:I

    .line 235
    .line 236
    iput-object p1, v0, Lcom/sgscq/vpn/f;->h:Ljava/lang/String;

    .line 237
    .line 238
    cmp-long p1, v11, v9

    .line 239
    .line 240
    if-lez p1, :cond_8

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide v11

    .line 247
    :goto_6
    iput-wide v11, v0, Lcom/sgscq/vpn/f;->i:J

    .line 248
    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v6

    .line 253
    add-long/2addr v6, v3

    .line 254
    iput-wide v6, v0, Lcom/sgscq/vpn/f;->j:J

    .line 255
    .line 256
    if-nez v2, :cond_a

    .line 257
    .line 258
    if-eqz v1, :cond_9

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_9
    move p2, v5

    .line 262
    :cond_a
    :goto_7
    iput-boolean p2, v0, Lcom/sgscq/vpn/f;->e:Z

    .line 263
    .line 264
    if-eqz p2, :cond_4

    .line 265
    .line 266
    iput-boolean v5, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 267
    .line 268
    iput v5, v0, Lcom/sgscq/vpn/f;->f:I

    .line 269
    .line 270
    goto/16 :goto_3
.end method

.method public final s(Lcom/sgscq/vpn/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p1, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logged_in"

    iget-boolean v2, p1, Lcom/sgscq/vpn/f;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sponsor"

    iget-boolean v2, p1, Lcom/sgscq/vpn/f;->d:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "level"

    iget v2, p1, Lcom/sgscq/vpn/f;->f:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/sgscq/vpn/f;->g:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-string v3, "amount"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plan_name"

    iget-object v2, p1, Lcom/sgscq/vpn/f;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_at"

    iget-wide v2, p1, Lcom/sgscq/vpn/f;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "valid_until"

    iget-wide v2, p1, Lcom/sgscq/vpn/f;->j:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "signature"

    iget-object p1, p1, Lcom/sgscq/vpn/f;->k:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t(Lcom/sgscq/vpn/d1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/sgscq/vpn/d1;->a:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bound"

    iget-boolean v2, p1, Lcom/sgscq/vpn/d1;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "following"

    iget-boolean v2, p1, Lcom/sgscq/vpn/d1;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked_at"

    iget-wide v2, p1, Lcom/sgscq/vpn/d1;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "valid_until"

    iget-wide v2, p1, Lcom/sgscq/vpn/d1;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "signature"

    iget-object p1, p1, Lcom/sgscq/vpn/d1;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
