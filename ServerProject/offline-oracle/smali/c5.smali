.class public final Lcom/sgscq/vpn/c5;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/sgscq/vpn/c5;->a:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iput-boolean v2, v0, Lcom/sgscq/vpn/c5;->b:Z

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    iput v3, v0, Lcom/sgscq/vpn/c5;->c:I

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    .line 38
    iput v3, v0, Lcom/sgscq/vpn/c5;->d:I

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    .line 43
    .line 44
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0x11

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    const v5, 0x800013

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v5, v4

    .line 58
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    .line 60
    .line 61
    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/p5;->Y(Landroid/app/Activity;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x6

    .line 66
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {v0, v5}, Lcom/sgscq/vpn/c5;->a(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->a3()[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const/4 v9, 0x0

    .line 79
    aget-object v8, v8, v9

    .line 80
    .line 81
    const-string v10, "\u7231\u53d1\u7535\u6253\u8d4f"

    .line 82
    .line 83
    filled-new-array {v10, v8}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->a3()[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    aget-object v10, v10, v3

    .line 92
    .line 93
    const-string v11, "\u52a0\u5165QQ\u7fa4"

    .line 94
    .line 95
    filled-new-array {v11, v10}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-static {}, Lcom/sgscq/vpn/cloud/m0;->a3()[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const/4 v12, 0x2

    .line 104
    aget-object v11, v11, v12

    .line 105
    .line 106
    const-string v12, "\u5173\u6ce8B\u7ad9"

    .line 107
    .line 108
    filled-new-array {v12, v11}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    filled-new-array {v8, v10, v11}, [[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    new-instance v10, Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 125
    .line 126
    .line 127
    move v11, v9

    .line 128
    :goto_1
    const/4 v12, 0x3

    .line 129
    if-ge v11, v12, :cond_2

    .line 130
    .line 131
    aget-object v12, v8, v11

    .line 132
    .line 133
    aget-object v15, v12, v9

    .line 134
    .line 135
    aget-object v12, v12, v3

    .line 136
    .line 137
    new-instance v13, Landroid/widget/LinearLayout;

    .line 138
    .line 139
    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 146
    .line 147
    .line 148
    const/16 v3, 0x8

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v0, v3}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v0, v6}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-virtual {v13, v14, v4, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 170
    .line 171
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 172
    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 176
    .line 177
    .line 178
    const/16 v4, 0xa

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    int-to-float v9, v9

    .line 185
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 186
    .line 187
    .line 188
    sget v9, Lcom/sgscq/vpn/p5;->y:I

    .line 189
    .line 190
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    :try_start_0
    invoke-static {v12, v5}, Lcom/sgscq/vpn/p5;->V(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    new-instance v14, Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    .line 207
    .line 208
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 209
    .line 210
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    .line 212
    .line 213
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :catch_0
    new-instance v9, Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    const-string v14, "QR"

    .line 228
    .line 229
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    const/high16 v14, 0x41600000    # 14.0f

    .line 233
    .line 234
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    .line 236
    .line 237
    sget v14, Lcom/sgscq/vpn/p5;->H:I

    .line 238
    .line 239
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    const/16 v14, 0x11

    .line 243
    .line 244
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    .line 246
    .line 247
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .line 249
    invoke-direct {v14, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .line 254
    .line 255
    :goto_2
    new-instance v9, Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    const/4 v14, 0x4

    .line 264
    invoke-virtual {v0, v14}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    const/4 v6, 0x0

    .line 269
    invoke-virtual {v9, v6, v14, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    .line 271
    .line 272
    const/high16 v6, 0x41300000    # 11.0f

    .line 273
    .line 274
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    .line 276
    .line 277
    sget v6, Lcom/sgscq/vpn/p5;->B:I

    .line 278
    .line 279
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    const/16 v6, 0x11

    .line 283
    .line 284
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    .line 286
    .line 287
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 288
    .line 289
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    .line 291
    .line 292
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    .line 294
    const/4 v6, -0x2

    .line 295
    invoke-direct {v14, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .line 300
    .line 301
    new-instance v6, Lcom/sgscq/vpn/t3;

    .line 302
    .line 303
    const/4 v9, 0x1

    .line 304
    invoke-direct {v6, v0, v15, v12, v9}, Lcom/sgscq/vpn/t3;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    sget v6, Lcom/sgscq/vpn/p5;->y:I

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    int-to-float v4, v4

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 326
    .line 327
    invoke-static {v6, v4, v12}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v13, v3, v4}, Lcom/sgscq/vpn/p5;->j(Landroid/widget/LinearLayout;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 332
    .line 333
    .line 334
    if-eqz v2, :cond_1

    .line 335
    .line 336
    const/4 v3, -0x1

    .line 337
    const/4 v4, -0x2

    .line 338
    const/4 v6, 0x0

    .line 339
    invoke-static {v3, v4, v6, v6, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v10, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    const/4 v12, 0x6

    .line 347
    goto :goto_3

    .line 348
    :cond_1
    const/4 v4, -0x2

    .line 349
    const/4 v6, 0x0

    .line 350
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .line 352
    const/high16 v12, 0x3f800000    # 1.0f

    .line 353
    .line 354
    invoke-direct {v3, v6, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 355
    .line 356
    .line 357
    const/4 v12, 0x6

    .line 358
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-virtual {v0, v12}, Lcom/sgscq/vpn/c5;->b(I)I

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    invoke-virtual {v3, v4, v6, v14, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v10, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 373
    .line 374
    move v3, v9

    .line 375
    const/16 v4, 0x11

    .line 376
    .line 377
    move v9, v6

    .line 378
    move v6, v12

    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :cond_2
    move v6, v9

    .line 382
    const/4 v3, -0x1

    .line 383
    const/4 v4, -0x2

    .line 384
    invoke-static {v3, v4, v6, v6, v6}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/c5;->b:Z

    const/16 v1, 0x48

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sgscq/vpn/c5;->d:I

    sub-int/2addr v0, p1

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/c5;->b(I)I

    move-result p1

    sub-int/2addr v0, p1

    const/16 p1, 0x96

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/c5;->b(I)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/c5;->b(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/c5;->b(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lcom/sgscq/vpn/c5;->c:I

    int-to-float p1, p1

    const v0, 0x3e6147ae    # 0.22f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/c5;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getPanelWidth()I
    .locals 2

    iget-boolean v0, p0, Lcom/sgscq/vpn/c5;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/sgscq/vpn/c5;->e:I

    if-lez v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/c5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sgscq/vpn/p5;->Y(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/c5;->a(I)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/sgscq/vpn/c5;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sgscq/vpn/c5;->e:I

    return v1
.end method
