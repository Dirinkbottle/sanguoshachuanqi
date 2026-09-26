.class public final Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lm/f;->b:Ljava/io/Serializable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lm/f;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lm/f;->d:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLl/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/f;->b:Ljava/io/Serializable;

    iput-boolean p3, p0, Lm/f;->a:Z

    new-instance p3, Lj/c;

    invoke-direct {p3, p1, p2}, Lj/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p3, p0, Lm/f;->c:Ljava/lang/Object;

    iput-object p4, p0, Lm/f;->d:Ljava/io/Serializable;

    return-void
.end method

.method public static a([[[Lm/c;ILm/c;)V
    .locals 3

    .line 1
    iget v0, p2, Lm/c;->d:I

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    aget-object p0, p0, p1

    .line 5
    .line 6
    iget p1, p2, Lm/c;->c:I

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    iget-object p1, p2, Lm/c;->a:Ll/b;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v0, v2, :cond_4

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Illegal mode "

    .line 38
    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    const/4 v1, 0x3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v1, v2

    .line 56
    :cond_4
    :goto_1
    aget-object p1, p0, v1

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    iget p1, p1, Lm/c;->f:I

    .line 61
    .line 62
    iget v0, p2, Lm/c;->f:I

    .line 63
    .line 64
    if-le p1, v0, :cond_6

    .line 65
    .line 66
    :cond_5
    aput-object p2, p0, v1

    .line 67
    .line 68
    :cond_6
    return-void
.end method

.method public static c(Ll/b;C)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p0, v1, :cond_5

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p0, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p0, v2, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq p0, v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lm/b;->b(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    return v1

    .line 29
    :cond_2
    const/16 p0, 0x60

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-ge p1, p0, :cond_3

    .line 33
    .line 34
    sget-object p0, Lm/b;->a:[I

    .line 35
    .line 36
    aget p0, p0, p1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object p0, Lm/b;->a:[I

    .line 40
    .line 41
    move p0, v2

    .line 42
    :goto_0
    if-eq p0, v2, :cond_4

    .line 43
    .line 44
    move v0, v1

    .line 45
    :cond_4
    return v0

    .line 46
    :cond_5
    const/16 p0, 0x30

    .line 47
    .line 48
    if-lt p1, p0, :cond_6

    .line 49
    .line 50
    const/16 p0, 0x39

    .line 51
    .line 52
    if-gt p1, p0, :cond_6

    .line 53
    .line 54
    move v0, v1

    .line 55
    :cond_6
    return v0
.end method

.method public static e(I)Ll/d;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x28

    :goto_0
    invoke-static {p0}, Ll/d;->b(I)Ll/d;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(Ll/d;[[[Lm/c;ILm/c;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    iget-object v0, v8, Lm/f;->c:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v11, v0

    .line 10
    check-cast v11, Lj/c;

    .line 11
    .line 12
    iget-object v0, v11, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    iget v1, v11, Lj/c;->b:I

    .line 16
    .line 17
    const-string v12, ""

    .line 18
    .line 19
    iget-object v13, v8, Lm/f;->b:Ljava/io/Serializable;

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    move-object v2, v13

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, v11, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 31
    .line 32
    aget-object v3, v3, v1

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    add-int/lit8 v0, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    move v14, v0

    .line 57
    move v15, v1

    .line 58
    :goto_1
    if-ge v15, v14, :cond_2

    .line 59
    .line 60
    move-object v0, v13

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, v11, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 68
    .line 69
    aget-object v1, v1, v15

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    new-instance v7, Lm/c;

    .line 90
    .line 91
    sget-object v2, Ll/b;->e:Ll/b;

    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    move-object v0, v7

    .line 95
    move-object/from16 v1, p0

    .line 96
    .line 97
    move/from16 v3, p3

    .line 98
    .line 99
    move v4, v15

    .line 100
    move-object/from16 v6, p4

    .line 101
    .line 102
    move-object v8, v7

    .line 103
    move-object/from16 v7, p1

    .line 104
    .line 105
    invoke-direct/range {v0 .. v7}, Lm/c;-><init>(Lm/f;Ll/b;IIILm/c;Ll/d;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v9, v10, v8}, Lm/f;->a([[[Lm/c;ILm/c;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 112
    .line 113
    move-object/from16 v8, p0

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    sget-object v2, Ll/b;->g:Ll/b;

    .line 117
    .line 118
    check-cast v13, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    new-instance v8, Lm/c;

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x1

    .line 134
    move-object v0, v8

    .line 135
    move-object/from16 v1, p0

    .line 136
    .line 137
    move/from16 v3, p3

    .line 138
    .line 139
    move-object/from16 v6, p4

    .line 140
    .line 141
    move-object/from16 v7, p1

    .line 142
    .line 143
    invoke-direct/range {v0 .. v7}, Lm/c;-><init>(Lm/f;Ll/b;IIILm/c;Ll/d;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v9, v10, v8}, Lm/f;->a([[[Lm/c;ILm/c;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    sget-object v2, Ll/b;->d:Ll/b;

    .line 154
    .line 155
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/4 v11, 0x2

    .line 164
    const/4 v12, 0x1

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    new-instance v14, Lm/c;

    .line 168
    .line 169
    const/4 v4, 0x0

    .line 170
    add-int/lit8 v0, v10, 0x1

    .line 171
    .line 172
    if-ge v0, v8, :cond_5

    .line 173
    .line 174
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_4

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move v5, v11

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    :goto_2
    move v5, v12

    .line 188
    :goto_3
    move-object v0, v14

    .line 189
    move-object/from16 v1, p0

    .line 190
    .line 191
    move/from16 v3, p3

    .line 192
    .line 193
    move-object/from16 v6, p4

    .line 194
    .line 195
    move-object/from16 v7, p1

    .line 196
    .line 197
    invoke-direct/range {v0 .. v7}, Lm/c;-><init>(Lm/f;Ll/b;IIILm/c;Ll/d;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v9, v10, v14}, Lm/f;->a([[[Lm/c;ILm/c;)V

    .line 201
    .line 202
    .line 203
    :cond_6
    sget-object v2, Ll/b;->c:Ll/b;

    .line 204
    .line 205
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_b

    .line 214
    .line 215
    new-instance v14, Lm/c;

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    add-int/lit8 v0, v10, 0x1

    .line 219
    .line 220
    if-ge v0, v8, :cond_a

    .line 221
    .line 222
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_7

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    add-int/lit8 v0, v10, 0x2

    .line 234
    .line 235
    if-ge v0, v8, :cond_9

    .line 236
    .line 237
    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-static {v2, v0}, Lm/f;->c(Ll/b;C)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_8

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_8
    const/4 v0, 0x3

    .line 249
    move v5, v0

    .line 250
    goto :goto_6

    .line 251
    :cond_9
    :goto_4
    move v5, v11

    .line 252
    goto :goto_6

    .line 253
    :cond_a
    :goto_5
    move v5, v12

    .line 254
    :goto_6
    move-object v0, v14

    .line 255
    move-object/from16 v1, p0

    .line 256
    .line 257
    move/from16 v3, p3

    .line 258
    .line 259
    move-object/from16 v6, p4

    .line 260
    .line 261
    move-object/from16 v7, p1

    .line 262
    .line 263
    invoke-direct/range {v0 .. v7}, Lm/c;-><init>(Lm/f;Ll/b;IIILm/c;Ll/d;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v9, v10, v14}, Lm/f;->a([[[Lm/c;ILm/c;)V

    .line 267
    .line 268
    .line 269
    :cond_b
    return-void
.end method

.method public final d(Ll/d;)Lm/e;
    .locals 12

    .line 1
    iget-object v0, p0, Lm/f;->b:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iget-object v3, p0, Lm/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lj/c;

    .line 14
    .line 15
    iget-object v4, v3, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 16
    .line 17
    array-length v4, v4

    .line 18
    const/4 v5, 0x4

    .line 19
    filled-new-array {v2, v4, v5}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-class v4, Lm/c;

    .line 24
    .line 25
    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, [[[Lm/c;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {p0, p1, v2, v4, v6}, Lm/f;->b(Ll/d;[[[Lm/c;ILm/c;)V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    :goto_0
    if-gt v6, v1, :cond_3

    .line 38
    .line 39
    move v7, v4

    .line 40
    :goto_1
    iget-object v8, v3, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 41
    .line 42
    array-length v8, v8

    .line 43
    if-ge v7, v8, :cond_2

    .line 44
    .line 45
    move v8, v4

    .line 46
    :goto_2
    if-ge v8, v5, :cond_1

    .line 47
    .line 48
    aget-object v9, v2, v6

    .line 49
    .line 50
    aget-object v9, v9, v7

    .line 51
    .line 52
    aget-object v9, v9, v8

    .line 53
    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    if-ge v6, v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0, p1, v2, v6, v9}, Lm/f;->b(Ll/d;[[[Lm/c;ILm/c;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v6, -0x1

    .line 71
    const v7, 0x7fffffff

    .line 72
    .line 73
    .line 74
    move v9, v4

    .line 75
    move v8, v7

    .line 76
    move v7, v6

    .line 77
    :goto_3
    iget-object v10, v3, Lj/c;->a:[Ljava/nio/charset/CharsetEncoder;

    .line 78
    .line 79
    array-length v10, v10

    .line 80
    if-ge v9, v10, :cond_6

    .line 81
    .line 82
    move v10, v4

    .line 83
    :goto_4
    if-ge v10, v5, :cond_5

    .line 84
    .line 85
    aget-object v11, v2, v1

    .line 86
    .line 87
    aget-object v11, v11, v9

    .line 88
    .line 89
    aget-object v11, v11, v10

    .line 90
    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    iget v11, v11, Lm/c;->f:I

    .line 94
    .line 95
    if-ge v11, v8, :cond_4

    .line 96
    .line 97
    move v6, v9

    .line 98
    move v7, v10

    .line 99
    move v8, v11

    .line 100
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    if-ltz v6, :cond_7

    .line 107
    .line 108
    new-instance v0, Lm/e;

    .line 109
    .line 110
    aget-object v1, v2, v1

    .line 111
    .line 112
    aget-object v1, v1, v6

    .line 113
    .line 114
    aget-object v1, v1, v7

    .line 115
    .line 116
    invoke-direct {v0, p0, p1, v1}, Lm/e;-><init>(Lm/f;Ll/d;Lm/c;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_7
    new-instance p1, Li/b;

    .line 121
    .line 122
    const-string v1, "Internal error: failed to encode \""

    .line 123
    .line 124
    const-string v2, "\""

    .line 125
    .line 126
    invoke-static {v1, v0, v2}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Li/b;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public final f(Ljava/util/LinkedHashMap;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "result"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lm/f;->b:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast v1, Ljava/util/Set;

    .line 19
    .line 20
    const-string v2, "changed_general_pk_ids"

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lm/f;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/util/Set;

    .line 36
    .line 37
    const-string v2, "changed_skill_ids"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lm/f;->d:Ljava/io/Serializable;

    .line 51
    .line 52
    check-cast v1, Ljava/util/Set;

    .line 53
    .line 54
    const-string v2, "changed_equipment_pk_ids"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/sgscq/vpn/handler/z0;->z(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lm/f;->a:Z

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    const-string v1, "buddy_changed"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 p1, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 87
    :goto_1
    iput-boolean p1, p0, Lm/f;->a:Z

    .line 88
    .line 89
    return-void
.end method
