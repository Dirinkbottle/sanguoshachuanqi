.class public final synthetic Lcom/sgscq/vpn/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/e4;->a:Lcom/sgscq/vpn/PassportActivity;

    iput p2, p0, Lcom/sgscq/vpn/e4;->b:I

    iput-object p3, p0, Lcom/sgscq/vpn/e4;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/sgscq/vpn/e4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 1
    iget-object v1, v0, Lcom/sgscq/vpn/e4;->a:Lcom/sgscq/vpn/PassportActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1f

    .line 3
    iget-object v2, v1, Lcom/sgscq/vpn/PassportActivity;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v4, v0, Lcom/sgscq/vpn/e4;->b:I

    if-eq v4, v2, :cond_1

    goto/16 :goto_18

    :cond_1
    iget-object v2, v1, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v0, Lcom/sgscq/vpn/e4;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, v1, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    const-string v5, "\u8bfb\u53d6\u5b58\u6863\u5931\u8d25\uff1a"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/sgscq/vpn/e4;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v1, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    const-string v4, "\u6682\u65e0\u5b58\u6863\n\n\u70b9\u51fb\u65b0\u5efa\u7a7a\u53f7\u540e\uff0c\u4ece\u65b0\u624b\u6d41\u7a0b\u91cd\u65b0\u5f00\u59cb"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v1, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    :cond_3
    iget-object v4, v1, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move v5, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sgscq/vpn/j4;

    iget-object v7, v1, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    iget-object v8, v6, Lcom/sgscq/vpn/j4;->a:Lcom/sgscq/vpn/k4;

    .line 4
    iget-object v9, v1, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    invoke-virtual {v9}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    move-result v11

    xor-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0xe

    .line 5
    invoke-static {v12, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v13

    const/16 v14, 0xc

    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v15

    invoke-static {v12, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v12

    invoke-static {v14, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v14

    .line 6
    invoke-virtual {v10, v13, v15, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v13, 0xa

    .line 7
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    .line 8
    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v13, Lcom/sgscq/vpn/p5;->z:I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v13, 0x1

    .line 9
    invoke-static {v13, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v14

    .line 10
    sget v15, Lcom/sgscq/vpn/p5;->I:I

    invoke-virtual {v12, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, v6, Lcom/sgscq/vpn/j4;->b:Lcom/sgscq/vpn/l4;

    iget-object v6, v5, Lcom/sgscq/vpn/l4;->b:Ljava/lang/String;

    iget-boolean v14, v5, Lcom/sgscq/vpn/l4;->a:Z

    if-nez v14, :cond_4

    iget-object v15, v8, Lcom/sgscq/vpn/k4;->b:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    move-object v6, v15

    :cond_4
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_5

    const-string v6, ""

    goto :goto_3

    :cond_5
    const-string v6, "\uff08\u7a7a\u53f7\uff09"

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lcom/sgscq/vpn/p5;->F:I

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, -0x2

    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-static {v14, v0, v6, v14, v14}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v13, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-boolean v14, v8, Lcom/sgscq/vpn/k4;->f:Z

    if-eqz v14, :cond_6

    const-string v15, "\u4e91\u5b58\u6863 \u00b7 \u7231\u53d1\u7535\u672c\u4eba"

    goto :goto_4

    :cond_6
    const-string v15, "\u672c\u5730\u5b58\u6863"

    :goto_4
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v14, :cond_7

    sget v15, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_5

    :cond_7
    sget v15, Lcom/sgscq/vpn/p5;->H:I

    :goto_5
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v15, 0x8

    .line 11
    invoke-static {v15, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v0

    invoke-static {v15, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v15

    move/from16 v17, v3

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v6, v0, v3, v15, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, -0x2

    invoke-static {v0, v0, v3, v3, v3}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, v8, Lcom/sgscq/vpn/k4;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/sgscq/vpn/m4;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_8

    const-string v6, "\u5f53\u524d "

    .line 13
    invoke-static {v6, v3}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v9, :cond_9

    sget v3, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_6

    :cond_9
    sget v3, Lcom/sgscq/vpn/p5;->H:I

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/4 v6, -0x2

    invoke-static {v6, v6, v3, v3, v3}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v13, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    .line 15
    invoke-static {v0, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v15

    const/4 v0, -0x1

    .line 16
    invoke-static {v0, v6, v3, v3, v15}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v13, "\u7b49\u7ea7 "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v5, Lcom/sgscq/vpn/l4;->c:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  \u00b7  VIP "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sgscq/vpn/l4;->d:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  \u00b7  \u6218\u529b "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sgscq/vpn/l4;->e:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  \u00b7  \u7edf\u5fa1 "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sgscq/vpn/l4;->i:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  \u00b7  \u5143\u5b9d "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/sgscq/vpn/l4;->f:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/sgscq/vpn/l4;->g:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "  \u00b7  "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " \u7b2c"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/sgscq/vpn/l4;->h:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u5173"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget v5, Lcom/sgscq/vpn/p5;->C:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x4

    .line 17
    invoke-static {v5, v1}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    const/4 v13, 0x0

    .line 18
    invoke-static {v0, v6, v13, v13, v5}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-wide v5, v8, Lcom/sgscq/vpn/k4;->c:J

    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-lez v13, :cond_b

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_b
    const-string v5, "\u672a\u77e5"

    :goto_7
    move-object v6, v1

    iget-wide v0, v8, Lcom/sgscq/vpn/k4;->d:J

    cmp-long v15, v0, v15

    if-lez v15, :cond_c

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    const-string v0, "\u4ece\u672a"

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v15, "\u6ce8\u518c: "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  \u00b7  \u6700\u540e\u767b\u5f55: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Lcom/sgscq/vpn/p5;->G:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v11, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    const/16 v0, 0x8

    .line 19
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    const/4 v5, -0x2

    const/4 v13, -0x1

    .line 20
    invoke-static {v13, v5, v0, v0, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_e

    move v1, v0

    goto :goto_a

    :cond_e
    const/4 v1, -0x1

    :goto_a
    invoke-static {v1, v5, v11, v0, v0}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800005

    if-eqz v11, :cond_f

    const/16 v3, 0x11

    goto :goto_b

    :cond_f
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez v11, :cond_10

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    move-object v3, v0

    :goto_c
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    new-instance v12, Lcom/sgscq/vpn/v3;

    invoke-direct {v12, v6, v8, v5}, Lcom/sgscq/vpn/v3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    const-string v5, "\u5207\u6362"

    invoke-virtual {v6, v5, v1, v12}, Lcom/sgscq/vpn/PassportActivity;->i(Ljava/lang/String;ILcom/sgscq/vpn/v3;)Landroid/widget/Button;

    move-result-object v1

    xor-int/lit8 v5, v9, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v9, :cond_11

    const v5, 0x3ee66666    # 0.45f

    goto :goto_d

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz v11, :cond_12

    const/4 v5, -0x1

    goto :goto_e

    :cond_12
    const/4 v5, -0x2

    :goto_e
    const/16 v9, 0x20

    .line 21
    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v12

    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v15

    const/4 v13, 0x0

    .line 22
    invoke-static {v5, v12, v13, v13, v13}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    if-eqz v15, :cond_13

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 23
    :cond_13
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x8

    if-eqz v11, :cond_14

    const/4 v12, 0x0

    goto :goto_f

    .line 24
    :cond_14
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v12

    :goto_f
    if-eqz v11, :cond_15

    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    const/4 v13, 0x0

    goto :goto_10

    :cond_15
    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 25
    :goto_10
    invoke-static {v12, v5, v13, v13, v13}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/sgscq/vpn/p5;->C:I

    new-instance v5, Lcom/sgscq/vpn/v3;

    const/4 v12, 0x1

    invoke-direct {v5, v6, v8, v12}, Lcom/sgscq/vpn/v3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    const-string v12, "\u6e05\u9664\u6570\u636e"

    invoke-virtual {v6, v12, v1, v5}, Lcom/sgscq/vpn/PassportActivity;->i(Ljava/lang/String;ILcom/sgscq/vpn/v3;)Landroid/widget/Button;

    move-result-object v1

    xor-int/lit8 v5, v14, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v14, :cond_16

    const v5, 0x3ee66666    # 0.45f

    goto :goto_11

    :cond_16
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_11
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz v11, :cond_17

    const/4 v13, -0x1

    goto :goto_12

    :cond_17
    const/4 v13, -0x2

    .line 26
    :goto_12
    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v12

    const/4 v14, 0x0

    .line 27
    invoke-static {v13, v5, v14, v14, v14}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    if-eqz v12, :cond_18

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 28
    :cond_18
    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x8

    if-eqz v11, :cond_19

    const/4 v12, 0x0

    goto :goto_13

    .line 29
    :cond_19
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v12

    :goto_13
    if-eqz v11, :cond_1a

    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    const/4 v13, 0x0

    goto :goto_14

    :cond_1a
    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 30
    :goto_14
    invoke-static {v12, v5, v13, v13, v13}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/sgscq/vpn/p5;->D:I

    new-instance v5, Lcom/sgscq/vpn/v3;

    const/4 v12, 0x2

    invoke-direct {v5, v6, v8, v12}, Lcom/sgscq/vpn/v3;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/k4;I)V

    const-string v8, "\u5220\u9664"

    invoke-virtual {v6, v8, v1, v5}, Lcom/sgscq/vpn/PassportActivity;->i(Ljava/lang/String;ILcom/sgscq/vpn/v3;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v11, :cond_1b

    const/4 v13, -0x1

    goto :goto_15

    :cond_1b
    const/4 v13, -0x2

    .line 31
    :goto_15
    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v8

    const/4 v12, 0x0

    .line 32
    invoke-static {v13, v5, v12, v12, v12}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    if-eqz v8, :cond_1c

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 33
    :cond_1c
    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_1d

    const/16 v1, 0x56

    .line 34
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v1

    const/4 v3, -0x2

    .line 35
    invoke-static {v1, v3, v12, v12, v12}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    :cond_1d
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v5

    const/4 v8, -0x1

    .line 37
    invoke-static {v8, v5, v12, v12, v12}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-static {v9, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v0

    const/16 v5, 0x8

    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v9

    .line 39
    invoke-static {v8, v0, v12, v9, v12}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v0

    const/4 v3, -0x2

    .line 41
    invoke-static {v8, v3, v12, v0, v12}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :goto_16
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move/from16 v3, v17

    if-ge v3, v0, :cond_1e

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/sgscq/vpn/p5;->I:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, v6, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    .line 43
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v1

    const/4 v7, 0x4

    invoke-static {v7, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v8

    invoke-static {v7, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 44
    invoke-static {v10, v1, v9, v8, v7}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v9

    goto :goto_17

    :cond_1e
    const/4 v0, 0x0

    move v5, v0

    :goto_17
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    goto/16 :goto_2

    :cond_1f
    :goto_18
    return-void
.end method
