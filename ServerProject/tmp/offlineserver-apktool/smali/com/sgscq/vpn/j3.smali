.class public final synthetic Lcom/sgscq/vpn/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/sgscq/vpn/j3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/sgscq/vpn/j3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/sgscq/vpn/j3;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/j3;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/sgscq/vpn/j3;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/j3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lcom/sgscq/vpn/MainActivity;

    .line 12
    .line 13
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/sgscq/vpn/MainActivity;->a(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/sgscq/vpn/MainActivity;->b()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    check-cast v2, Lcom/sgscq/vpn/a7;

    .line 23
    .line 24
    const-string v0, "name"

    .line 25
    .line 26
    iget-object v3, v2, Lcom/sgscq/vpn/a7;->a:Ljava/lang/Object;

    .line 27
    .line 28
    :try_start_0
    new-instance v4, Lcom/sgscq/vpn/y0;

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    invoke-direct {v4, v2, v5}, Lcom/sgscq/vpn/y0;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lcom/sgscq/vpn/p5;->O(Lq/l;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lorg/json/JSONObject;

    .line 39
    .line 40
    const-string v5, "tag_name"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "v"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    move-object v6, v5

    .line 61
    :goto_1
    move-object v7, v3

    .line 62
    check-cast v7, Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v3, Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, "\\."

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    array-length v7, v6

    .line 92
    array-length v9, v3

    .line 93
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    move v9, v8

    .line 98
    :goto_2
    if-ge v9, v7, :cond_4

    .line 99
    .line 100
    array-length v10, v6

    .line 101
    if-ge v9, v10, :cond_1

    .line 102
    .line 103
    aget-object v10, v6, v9

    .line 104
    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    goto :goto_3

    .line 110
    :cond_1
    move v10, v8

    .line 111
    :goto_3
    array-length v11, v3

    .line 112
    if-ge v9, v11, :cond_2

    .line 113
    .line 114
    aget-object v11, v3, v9

    .line 115
    .line 116
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    goto :goto_4

    .line 121
    :cond_2
    move v11, v8

    .line 122
    :goto_4
    if-eq v10, v11, :cond_3

    .line 123
    .line 124
    sub-int/2addr v10, v11

    .line 125
    goto :goto_5

    .line 126
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move v10, v8

    .line 130
    :goto_5
    if-lez v10, :cond_8

    .line 131
    .line 132
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v5, "body"

    .line 137
    .line 138
    const-string v6, ""

    .line 139
    .line 140
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const-string v6, "assets"

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-eqz v4, :cond_6

    .line 151
    .line 152
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ge v8, v6, :cond_6

    .line 157
    .line 158
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    const-string v9, ".apk"

    .line 167
    .line 168
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_5

    .line 173
    .line 174
    const-string v0, "browser_download_url"

    .line 175
    .line 176
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_7

    .line 181
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_6
    const/4 v0, 0x0

    .line 185
    :goto_7
    if-nez v0, :cond_7

    .line 186
    .line 187
    if-nez v1, :cond_9

    .line 188
    .line 189
    const-string v0, "\u672a\u627e\u5230APK\u4e0b\u8f7d\u5730\u5740"

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_7
    iget-object v4, v2, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v4, Landroid/os/Handler;

    .line 195
    .line 196
    new-instance v6, Lcom/sgscq/vpn/z3;

    .line 197
    .line 198
    invoke-direct {v6, v2, v3, v5, v0}, Lcom/sgscq/vpn/z3;-><init>(Lcom/sgscq/vpn/a7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_8
    if-nez v1, :cond_9

    .line 206
    .line 207
    const-string v0, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    .line 208
    .line 209
    :goto_8
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/a7;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_9

    .line 213
    :catch_0
    move-exception v0

    .line 214
    if-nez v1, :cond_9

    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "\u68c0\u67e5\u5931\u8d25: "

    .line 219
    .line 220
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v2, v0}, Lcom/sgscq/vpn/a7;->c(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_9
    :goto_9
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
