.class public Lcom/sgscq/vpn/PassportActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public a:Lcom/sgscq/vpn/m4;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/ScrollView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/sgscq/vpn/h;

.field public j:Lm/e;

.field public k:Lcom/sgscq/vpn/cloud/u0;

.field public l:[B

.field public volatile m:Lcom/sgscq/vpn/cloud/q0;

.field public final n:Ljava/util/concurrent/ExecutorService;

.field public final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/sgscq/vpn/x0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sgscq/vpn/x0;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static b(IIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz p3, :cond_0

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    if-eqz p4, :cond_1

    iput p4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/LinearLayout;Landroid/widget/Button;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2

    .line 7
    .line 8
    new-instance v0, Landroid/view/View;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    move v2, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    invoke-static {v3, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v1

    .line 33
    :goto_1
    invoke-static {v2, v3, v1, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/16 v0, 0x2a

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    const/4 p3, -0x1

    .line 45
    invoke-static {v0, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {p3, v0, v1, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-static {v0, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-static {v1, p3, v2, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    .line 71
    :cond_4
    :goto_2
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x41500000    # 13.0f

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0xe

    .line 30
    .line 31
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    sget v3, Lcom/sgscq/vpn/p5;->C:I

    .line 50
    .line 51
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 52
    .line 53
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 54
    .line 55
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v5, p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 73
    .line 74
    .line 75
    sget p1, Lcom/sgscq/vpn/p5;->x:I

    .line 76
    .line 77
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    int-to-float v1, v1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .line 92
    invoke-static {p1, v1, v2}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0, v5, p1}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->i:Lcom/sgscq/vpn/h;

    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/PassportActivity;->j:Lm/e;

    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v1

    iget-boolean v2, v0, Lcom/sgscq/vpn/f;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v0, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    const-string v3, ""

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v0, v3

    :cond_3
    const-string v1, "release"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7231\u53d1\u7535\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "\u5df2\u767b\u5f55"

    goto :goto_3

    :cond_4
    const-string v0, "\u672a\u767b\u5f55"

    :cond_5
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    sget v1, Lcom/sgscq/vpn/p5;->C:I

    goto :goto_4

    :cond_6
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->f:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->f:Landroid/widget/Button;

    if-eqz v2, :cond_8

    move v4, v1

    goto :goto_5

    :cond_8
    move v4, v3

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->g:Landroid/widget/Button;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->g:Landroid/widget/Button;

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    const-string v1, "\u4e91\u5b58\u6863\u72b6\u6001\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sgscq/vpn/f4;

    invoke-direct {v3, p0, v0, v1}, Lcom/sgscq/vpn/f4;-><init>(Lcom/sgscq/vpn/PassportActivity;Lcom/sgscq/vpn/cloud/q0;I)V

    const-string v0, "cloud-save-status"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/PassportActivity;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u8bfb\u53d6\u5b58\u6863\u2026"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    new-instance v2, Lcom/sgscq/vpn/b4;

    invoke-direct {v2, p0, v1, v3}, Lcom/sgscq/vpn/b4;-><init>(Lcom/sgscq/vpn/PassportActivity;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "\u5b58\u6863\u64cd\u4f5c\u6b63\u5728\u8fdb\u884c\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u5b58\u6863\u5904\u7406\u4e2d"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :try_start_0
    iget-object v2, p0, Lcom/sgscq/vpn/PassportActivity;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sgscq/vpn/c;

    const/4 v4, 0x6

    invoke-direct {v3, p0, p2, p1, v4}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sgscq/vpn/d4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sgscq/vpn/d4;-><init>(Lcom/sgscq/vpn/PassportActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;ILcom/sgscq/vpn/v3;)Landroid/widget/Button;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Button;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x41300000    # 11.0f

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x6

    .line 49
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    int-to-float p1, p1

    .line 54
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/sgscq/vpn/p5;->y:I

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, v1}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3eb

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-ne p2, v1, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lcom/sgscq/vpn/PassportActivity;->l:[B

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    iput-object p1, p0, Lcom/sgscq/vpn/PassportActivity;->l:[B

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 45
    .line 46
    .line 47
    const-string p2, "\u5b58\u6863\u5f52\u6863\u5df2\u5bfc\u51fa"

    .line 48
    .line 49
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception p2

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    .line 63
    .line 64
    const-string v0, "\u65e0\u6cd5\u5199\u5165\u5f52\u6863\u6587\u4ef6"

    .line 65
    .line 66
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :goto_0
    if-eqz p3, :cond_1

    .line 71
    .line 72
    :try_start_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p3

    .line 77
    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 81
    :catch_0
    move-exception p2

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v0, "\u5199\u5165\u5f52\u6863\u5931\u8d25\uff1a"

    .line 85
    .line 86
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iput-object p1, p0, Lcom/sgscq/vpn/PassportActivity;->l:[B

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/16 v0, 0x3ec

    .line 112
    .line 113
    if-ne p1, v0, :cond_4

    .line 114
    .line 115
    if-ne p2, v1, :cond_4

    .line 116
    .line 117
    if-eqz p3, :cond_4

    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const-string p2, "\u6b63\u5728\u9a8c\u8bc1\u5e76\u89e3\u5bc6\u5b58\u6863..."

    .line 130
    .line 131
    const/4 p3, 0x0

    .line 132
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 137
    .line 138
    .line 139
    new-instance p2, Ljava/lang/Thread;

    .line 140
    .line 141
    new-instance p3, Lcom/sgscq/vpn/d;

    .line 142
    .line 143
    const/16 v0, 0xb

    .line 144
    .line 145
    invoke-direct {p3, p0, p1, v0}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    const-string p1, "sgscq-save-archive-import-read"

    .line 149
    .line 150
    invoke-direct {p2, p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 154
    .line 155
    .line 156
    :cond_4
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->e0(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->l(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/sgscq/vpn/m4;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->a:Lcom/sgscq/vpn/m4;

    .line 18
    .line 19
    new-instance v1, Lcom/sgscq/vpn/h;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, v2, v0}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->i:Lcom/sgscq/vpn/h;

    .line 26
    .line 27
    new-instance v1, Lm/e;

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    invoke-direct {v1, v3, v0}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->j:Lm/e;

    .line 34
    .line 35
    new-instance v1, Lcom/sgscq/vpn/cloud/u0;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/sgscq/vpn/cloud/u0;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->k:Lcom/sgscq/vpn/cloud/u0;

    .line 41
    .line 42
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->Y(Landroid/app/Activity;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    new-instance v4, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    .line 54
    .line 55
    sget v6, Lcom/sgscq/vpn/p5;->x:I

    .line 56
    .line 57
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    new-instance v6, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const/16 v7, 0xc

    .line 66
    .line 67
    invoke-static {v7, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/16 v9, 0x8

    .line 72
    .line 73
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    add-int/2addr v10, v1

    .line 78
    const/16 v1, 0x10

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    .line 90
    .line 91
    sget v8, Lcom/sgscq/vpn/p5;->A:I

    .line 92
    .line 93
    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Landroid/widget/Button;

    .line 97
    .line 98
    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    const-string v10, "\u8fd4\u56de"

    .line 102
    .line 103
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const/high16 v10, 0x41500000    # 13.0f

    .line 107
    .line 108
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    .line 110
    .line 111
    sget v11, Lcom/sgscq/vpn/p5;->B:I

    .line 112
    .line 113
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 123
    .line 124
    .line 125
    const/16 v11, 0xa

    .line 126
    .line 127
    invoke-static {v11, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    invoke-static {v11, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-virtual {v8, v12, v2, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    .line 137
    .line 138
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    .line 139
    .line 140
    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 144
    .line 145
    .line 146
    const/4 v13, 0x6

    .line 147
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    int-to-float v14, v14

    .line 152
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 153
    .line 154
    .line 155
    sget v14, Lcom/sgscq/vpn/p5;->A:I

    .line 156
    .line 157
    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    .line 159
    .line 160
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    sget v15, Lcom/sgscq/vpn/p5;->C:I

    .line 165
    .line 166
    invoke-virtual {v12, v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 167
    .line 168
    .line 169
    sget v14, Lcom/sgscq/vpn/p5;->A:I

    .line 170
    .line 171
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    int-to-float v15, v15

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 185
    .line 186
    invoke-static {v14, v15, v13}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-static {v8, v12, v13}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 191
    .line 192
    .line 193
    new-instance v12, Lcom/sgscq/vpn/s3;

    .line 194
    .line 195
    invoke-direct {v12, v0, v2}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .line 203
    const/16 v13, 0x58

    .line 204
    .line 205
    invoke-static {v13, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    const/16 v14, 0x22

    .line 210
    .line 211
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    const v15, 0x800013

    .line 216
    .line 217
    .line 218
    invoke-direct {v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    new-instance v12, Landroid/widget/LinearLayout;

    .line 225
    .line 226
    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    .line 231
    .line 232
    const/16 v13, 0x11

    .line 233
    .line 234
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 235
    .line 236
    .line 237
    new-instance v14, Landroid/widget/TextView;

    .line 238
    .line 239
    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    const-string v15, "\u5b58\u6863\u7ba1\u7406"

    .line 243
    .line 244
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    const/high16 v15, 0x41900000    # 18.0f

    .line 248
    .line 249
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    .line 251
    .line 252
    sget v15, Lcom/sgscq/vpn/p5;->B:I

    .line 253
    .line 254
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    .line 256
    .line 257
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 258
    .line 259
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    .line 264
    .line 265
    const/4 v15, -0x1

    .line 266
    const/4 v10, -0x2

    .line 267
    invoke-static {v15, v10, v2, v2, v2}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v12, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    new-instance v3, Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    iput-object v3, v0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    .line 280
    .line 281
    const/high16 v14, 0x41300000    # 11.0f

    .line 282
    .line 283
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 284
    .line 285
    .line 286
    iget-object v3, v0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    .line 287
    .line 288
    sget v14, Lcom/sgscq/vpn/p5;->C:I

    .line 289
    .line 290
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    .line 292
    .line 293
    iget-object v3, v0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v0, Lcom/sgscq/vpn/PassportActivity;->h:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-static {v15, v10, v2, v2, v2}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    invoke-virtual {v12, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .line 306
    .line 307
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .line 309
    invoke-direct {v3, v15, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 310
    .line 311
    .line 312
    const/16 v14, 0x68

    .line 313
    .line 314
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 319
    .line 320
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 325
    .line 326
    invoke-virtual {v6, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    .line 328
    .line 329
    new-instance v3, Landroid/view/View;

    .line 330
    .line 331
    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    sget v7, Lcom/sgscq/vpn/p5;->C:I

    .line 335
    .line 336
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 337
    .line 338
    .line 339
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    new-instance v12, Landroid/widget/ScrollView;

    .line 344
    .line 345
    invoke-direct {v12, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    iput-object v12, v0, Lcom/sgscq/vpn/PassportActivity;->c:Landroid/widget/ScrollView;

    .line 349
    .line 350
    invoke-virtual {v12, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 351
    .line 352
    .line 353
    iget-object v12, v0, Lcom/sgscq/vpn/PassportActivity;->c:Landroid/widget/ScrollView;

    .line 354
    .line 355
    sget v14, Lcom/sgscq/vpn/p5;->x:I

    .line 356
    .line 357
    invoke-virtual {v12, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 358
    .line 359
    .line 360
    new-instance v12, Landroid/widget/LinearLayout;

    .line 361
    .line 362
    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 366
    .line 367
    .line 368
    const/16 v14, 0xe

    .line 369
    .line 370
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    invoke-static {v1, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    const/16 v14, 0x14

    .line 383
    .line 384
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    invoke-virtual {v12, v11, v1, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    .line 390
    .line 391
    sget v1, Lcom/sgscq/vpn/p5;->x:I

    .line 392
    .line 393
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    .line 395
    .line 396
    new-instance v1, Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 399
    .line 400
    .line 401
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 402
    .line 403
    const-string v2, "\u6682\u65e0\u5b58\u6863\n\n\u70b9\u51fb\u65b0\u5efa\u7a7a\u53f7\u540e\uff0c\u4ece\u65b0\u624b\u6d41\u7a0b\u91cd\u65b0\u5f00\u59cb"

    .line 404
    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 409
    .line 410
    const/high16 v2, 0x41600000    # 14.0f

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 416
    .line 417
    sget v2, Lcom/sgscq/vpn/p5;->G:I

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 423
    .line 424
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 428
    .line 429
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    const/16 v5, 0x3c

    .line 434
    .line 435
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 440
    .line 441
    .line 442
    move-result v11

    .line 443
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 444
    .line 445
    .line 446
    move-result v14

    .line 447
    invoke-virtual {v1, v2, v5, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 451
    .line 452
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->d:Landroid/widget/TextView;

    .line 456
    .line 457
    const/4 v2, 0x0

    .line 458
    invoke-static {v15, v10, v2, v2, v2}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-virtual {v12, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    .line 464
    .line 465
    new-instance v1, Landroid/widget/LinearLayout;

    .line 466
    .line 467
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 468
    .line 469
    .line 470
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    .line 471
    .line 472
    const/4 v5, 0x1

    .line 473
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->b:Landroid/widget/LinearLayout;

    .line 477
    .line 478
    invoke-static {v15, v10, v2, v2, v2}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-virtual {v12, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .line 484
    .line 485
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->c:Landroid/widget/ScrollView;

    .line 486
    .line 487
    invoke-static {v15, v15, v2, v2, v2}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    invoke-virtual {v1, v12, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    .line 493
    .line 494
    new-instance v1, Lcom/sgscq/vpn/c5;

    .line 495
    .line 496
    invoke-direct {v1, v0}, Lcom/sgscq/vpn/c5;-><init>(Landroid/app/Activity;)V

    .line 497
    .line 498
    .line 499
    new-instance v2, Landroid/widget/LinearLayout;

    .line 500
    .line 501
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 502
    .line 503
    .line 504
    xor-int/lit8 v5, v7, 0x1

    .line 505
    .line 506
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 510
    .line 511
    .line 512
    if-eqz v7, :cond_0

    .line 513
    .line 514
    const/16 v5, 0xa

    .line 515
    .line 516
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    move v12, v11

    .line 521
    const/16 v11, 0xe

    .line 522
    .line 523
    goto :goto_0

    .line 524
    :cond_0
    const/16 v5, 0xa

    .line 525
    .line 526
    const/16 v11, 0xe

    .line 527
    .line 528
    invoke-static {v11, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 529
    .line 530
    .line 531
    move-result v12

    .line 532
    :goto_0
    const/16 v14, 0xc

    .line 533
    .line 534
    if-eqz v7, :cond_1

    .line 535
    .line 536
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 537
    .line 538
    .line 539
    move-result v17

    .line 540
    goto :goto_1

    .line 541
    :cond_1
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 542
    .line 543
    .line 544
    move-result v17

    .line 545
    :goto_1
    move/from16 v10, v17

    .line 546
    .line 547
    if-eqz v7, :cond_2

    .line 548
    .line 549
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 550
    .line 551
    .line 552
    move-result v17

    .line 553
    goto :goto_2

    .line 554
    :cond_2
    invoke-static {v11, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 555
    .line 556
    .line 557
    move-result v17

    .line 558
    :goto_2
    move/from16 v11, v17

    .line 559
    .line 560
    if-eqz v7, :cond_3

    .line 561
    .line 562
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    goto :goto_3

    .line 567
    :cond_3
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 568
    .line 569
    .line 570
    move-result v5

    .line 571
    :goto_3
    invoke-virtual {v2, v12, v10, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 572
    .line 573
    .line 574
    sget v5, Lcom/sgscq/vpn/p5;->x:I

    .line 575
    .line 576
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 577
    .line 578
    .line 579
    new-instance v5, Landroid/widget/LinearLayout;

    .line 580
    .line 581
    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 588
    .line 589
    .line 590
    new-instance v10, Lcom/sgscq/vpn/s3;

    .line 591
    .line 592
    const/4 v11, 0x1

    .line 593
    invoke-direct {v10, v0, v11}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 594
    .line 595
    .line 596
    const-string v11, "\u65b0\u5efa\u672c\u5730\u7a7a\u53f7"

    .line 597
    .line 598
    invoke-virtual {v0, v11, v10}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    new-instance v11, Lcom/sgscq/vpn/s3;

    .line 603
    .line 604
    const/4 v12, 0x2

    .line 605
    invoke-direct {v11, v0, v12}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 606
    .line 607
    .line 608
    const-string v12, "\u65b0\u5efa\u4e91\u5b58\u6863\u7a7a\u53f7"

    .line 609
    .line 610
    invoke-virtual {v0, v12, v11}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 611
    .line 612
    .line 613
    move-result-object v11

    .line 614
    iput-object v11, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    .line 615
    .line 616
    const/4 v12, 0x0

    .line 617
    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 618
    .line 619
    .line 620
    iget-object v11, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    .line 621
    .line 622
    const v12, 0x3ee66666    # 0.45f

    .line 623
    .line 624
    .line 625
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 626
    .line 627
    .line 628
    new-instance v11, Lcom/sgscq/vpn/s3;

    .line 629
    .line 630
    const/4 v12, 0x3

    .line 631
    invoke-direct {v11, v0, v12}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 632
    .line 633
    .line 634
    const-string v12, "\u6e05\u9664\u73a9\u5bb6\u6570\u636e"

    .line 635
    .line 636
    invoke-virtual {v0, v12, v11}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 637
    .line 638
    .line 639
    move-result-object v11

    .line 640
    new-instance v12, Lcom/sgscq/vpn/s3;

    .line 641
    .line 642
    const/4 v14, 0x4

    .line 643
    invoke-direct {v12, v0, v14}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 644
    .line 645
    .line 646
    const-string v14, "\u4fee\u590d\u81e3\u670d\u9b42\u9b44"

    .line 647
    .line 648
    invoke-virtual {v0, v14, v12}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 649
    .line 650
    .line 651
    move-result-object v12

    .line 652
    new-instance v14, Lcom/sgscq/vpn/s3;

    .line 653
    .line 654
    const/4 v15, 0x5

    .line 655
    invoke-direct {v14, v0, v15}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 656
    .line 657
    .line 658
    new-instance v15, Landroid/widget/Button;

    .line 659
    .line 660
    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 661
    .line 662
    .line 663
    const-string v13, "\u6e05\u9664\u901a\u884c\u8bc1"

    .line 664
    .line 665
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    const/high16 v13, 0x41500000    # 13.0f

    .line 669
    .line 670
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 671
    .line 672
    .line 673
    sget v13, Lcom/sgscq/vpn/p5;->D:I

    .line 674
    .line 675
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    .line 677
    .line 678
    const/4 v13, 0x0

    .line 679
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v15, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 686
    .line 687
    .line 688
    move-object/from16 v18, v4

    .line 689
    .line 690
    const/16 v9, 0xe

    .line 691
    .line 692
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 697
    .line 698
    .line 699
    move-result v9

    .line 700
    invoke-virtual {v15, v4, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 701
    .line 702
    .line 703
    const/16 v4, 0x8

    .line 704
    .line 705
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 706
    .line 707
    .line 708
    move-result v9

    .line 709
    int-to-float v4, v9

    .line 710
    sget v9, Lcom/sgscq/vpn/p5;->D:I

    .line 711
    .line 712
    sget v13, Lcom/sgscq/vpn/p5;->x:I

    .line 713
    .line 714
    move-object/from16 v19, v8

    .line 715
    .line 716
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    .line 717
    .line 718
    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 719
    .line 720
    .line 721
    move-object/from16 v20, v1

    .line 722
    .line 723
    const/4 v1, 0x0

    .line 724
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 731
    .line 732
    .line 733
    const/4 v1, 0x1

    .line 734
    invoke-static {v1, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    invoke-virtual {v8, v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 739
    .line 740
    .line 741
    sget v1, Lcom/sgscq/vpn/p5;->x:I

    .line 742
    .line 743
    const/16 v4, 0x8

    .line 744
    .line 745
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 746
    .line 747
    .line 748
    move-result v9

    .line 749
    int-to-float v4, v9

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 751
    .line 752
    .line 753
    move-result-object v9

    .line 754
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 755
    .line 756
    .line 757
    move-result-object v9

    .line 758
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 759
    .line 760
    invoke-static {v1, v4, v9}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-static {v15, v8, v1}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v15, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    .line 769
    .line 770
    new-instance v1, Lcom/sgscq/vpn/s3;

    .line 771
    .line 772
    const/4 v4, 0x6

    .line 773
    invoke-direct {v1, v0, v4}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 774
    .line 775
    .line 776
    const-string v4, "\u5bfc\u51fa\u5168\u90e8\u5b58\u6863"

    .line 777
    .line 778
    invoke-virtual {v0, v4, v1}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->f:Landroid/widget/Button;

    .line 783
    .line 784
    new-instance v1, Lcom/sgscq/vpn/s3;

    .line 785
    .line 786
    const/4 v4, 0x7

    .line 787
    invoke-direct {v1, v0, v4}, Lcom/sgscq/vpn/s3;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 788
    .line 789
    .line 790
    const-string v4, "\u5bfc\u5165\u5b58\u6863"

    .line 791
    .line 792
    invoke-virtual {v0, v4, v1}, Lcom/sgscq/vpn/PassportActivity;->c(Ljava/lang/String;Lcom/sgscq/vpn/s3;)Landroid/widget/Button;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    iput-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->g:Landroid/widget/Button;

    .line 797
    .line 798
    iget-object v1, v0, Lcom/sgscq/vpn/PassportActivity;->e:Landroid/widget/Button;

    .line 799
    .line 800
    filled-new-array {v10, v1, v11, v15}, [Landroid/widget/Button;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    iget-object v4, v0, Lcom/sgscq/vpn/PassportActivity;->f:Landroid/widget/Button;

    .line 809
    .line 810
    iget-object v8, v0, Lcom/sgscq/vpn/PassportActivity;->g:Landroid/widget/Button;

    .line 811
    .line 812
    filled-new-array {v12, v4, v8}, [Landroid/widget/Button;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 825
    .line 826
    .line 827
    move-result v8

    .line 828
    if-eqz v8, :cond_4

    .line 829
    .line 830
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v8

    .line 834
    check-cast v8, Landroid/widget/Button;

    .line 835
    .line 836
    invoke-virtual {v0, v5, v8, v7}, Lcom/sgscq/vpn/PassportActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Z)V

    .line 837
    .line 838
    .line 839
    goto :goto_4

    .line 840
    :cond_4
    if-eqz v7, :cond_5

    .line 841
    .line 842
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 847
    .line 848
    .line 849
    move-result v8

    .line 850
    if-eqz v8, :cond_5

    .line 851
    .line 852
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v8

    .line 856
    check-cast v8, Landroid/widget/Button;

    .line 857
    .line 858
    const/4 v9, 0x1

    .line 859
    invoke-virtual {v0, v5, v8, v9}, Lcom/sgscq/vpn/PassportActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Z)V

    .line 860
    .line 861
    .line 862
    goto :goto_5

    .line 863
    :cond_5
    const/4 v9, 0x1

    .line 864
    if-eqz v7, :cond_6

    .line 865
    .line 866
    const/4 v1, 0x0

    .line 867
    goto :goto_6

    .line 868
    :cond_6
    const/4 v1, -0x1

    .line 869
    :goto_6
    if-eqz v7, :cond_7

    .line 870
    .line 871
    const/4 v8, -0x1

    .line 872
    goto :goto_7

    .line 873
    :cond_7
    const/4 v8, -0x2

    .line 874
    :goto_7
    const/4 v10, 0x0

    .line 875
    invoke-static {v1, v8, v9, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    .line 881
    .line 882
    if-nez v7, :cond_9

    .line 883
    .line 884
    new-instance v1, Landroid/widget/LinearLayout;

    .line 885
    .line 886
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 890
    .line 891
    .line 892
    const/16 v5, 0x11

    .line 893
    .line 894
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 895
    .line 896
    .line 897
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 902
    .line 903
    .line 904
    move-result v5

    .line 905
    if-eqz v5, :cond_8

    .line 906
    .line 907
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v5

    .line 911
    check-cast v5, Landroid/widget/Button;

    .line 912
    .line 913
    invoke-virtual {v0, v1, v5, v10}, Lcom/sgscq/vpn/PassportActivity;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Z)V

    .line 914
    .line 915
    .line 916
    goto :goto_8

    .line 917
    :cond_8
    const/16 v5, 0x8

    .line 918
    .line 919
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    const/4 v5, -0x1

    .line 924
    const/4 v8, -0x2

    .line 925
    invoke-static {v5, v8, v10, v4, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 926
    .line 927
    .line 928
    move-result-object v4

    .line 929
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    .line 931
    .line 932
    goto :goto_9

    .line 933
    :cond_9
    const/4 v5, -0x1

    .line 934
    const/4 v8, -0x2

    .line 935
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/PassportActivity;->e()V

    .line 936
    .line 937
    .line 938
    if-eqz v7, :cond_a

    .line 939
    .line 940
    new-instance v1, Landroid/widget/LinearLayout;

    .line 941
    .line 942
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 943
    .line 944
    .line 945
    const/4 v4, 0x1

    .line 946
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    .line 948
    .line 949
    sget v7, Lcom/sgscq/vpn/p5;->x:I

    .line 950
    .line 951
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 952
    .line 953
    .line 954
    invoke-static {v5, v8, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 955
    .line 956
    .line 957
    move-result-object v7

    .line 958
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    .line 960
    .line 961
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 962
    .line 963
    .line 964
    move-result v6

    .line 965
    invoke-static {v5, v6, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 966
    .line 967
    .line 968
    move-result-object v6

    .line 969
    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    .line 971
    .line 972
    iget-object v3, v0, Lcom/sgscq/vpn/PassportActivity;->c:Landroid/widget/ScrollView;

    .line 973
    .line 974
    invoke-static {v5, v10, v4, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 975
    .line 976
    .line 977
    move-result-object v6

    .line 978
    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    .line 980
    .line 981
    new-instance v3, Landroid/widget/LinearLayout;

    .line 982
    .line 983
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 987
    .line 988
    .line 989
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 990
    .line 991
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 992
    .line 993
    .line 994
    const/16 v4, 0xb8

    .line 995
    .line 996
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    invoke-static {v4, v5, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    .line 1006
    .line 1007
    new-instance v2, Landroid/view/View;

    .line 1008
    .line 1009
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1010
    .line 1011
    .line 1012
    sget v4, Lcom/sgscq/vpn/p5;->C:I

    .line 1013
    .line 1014
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1015
    .line 1016
    .line 1017
    const/4 v4, 0x1

    .line 1018
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    invoke-static {v6, v5, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v6

    .line 1026
    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v10, v5, v4, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v1, Landroid/view/View;

    .line 1037
    .line 1038
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1039
    .line 1040
    .line 1041
    sget v2, Lcom/sgscq/vpn/p5;->C:I

    .line 1042
    .line 1043
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1044
    .line 1045
    .line 1046
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    invoke-static {v2, v5, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v2

    .line 1054
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual/range {v20 .. v20}, Lcom/sgscq/vpn/c5;->getPanelWidth()I

    .line 1058
    .line 1059
    .line 1060
    move-result v1

    .line 1061
    invoke-static {v1, v5, v10, v10, v10}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    move-object/from16 v4, v20

    .line 1066
    .line 1067
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1074
    .line 1075
    .line 1076
    const/4 v1, 0x0

    .line 1077
    goto/16 :goto_a

    .line 1078
    .line 1079
    :cond_a
    move-object/from16 v4, v20

    .line 1080
    .line 1081
    const/16 v1, 0x78

    .line 1082
    .line 1083
    invoke-static {v1, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    const/16 v5, 0x40

    .line 1088
    .line 1089
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v5

    .line 1093
    new-instance v7, Landroid/widget/FrameLayout;

    .line 1094
    .line 1095
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1096
    .line 1097
    .line 1098
    sget v8, Lcom/sgscq/vpn/p5;->x:I

    .line 1099
    .line 1100
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1101
    .line 1102
    .line 1103
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1104
    .line 1105
    const/4 v9, -0x1

    .line 1106
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1107
    .line 1108
    .line 1109
    add-int/2addr v5, v1

    .line 1110
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1111
    .line 1112
    iget-object v5, v0, Lcom/sgscq/vpn/PassportActivity;->c:Landroid/widget/ScrollView;

    .line 1113
    .line 1114
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1118
    .line 1119
    const/4 v8, -0x2

    .line 1120
    invoke-direct {v5, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1121
    .line 1122
    .line 1123
    const/16 v8, 0x51

    .line 1124
    .line 1125
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1126
    .line 1127
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1128
    .line 1129
    invoke-virtual {v7, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    .line 1131
    .line 1132
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1133
    .line 1134
    const/4 v5, 0x1

    .line 1135
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1136
    .line 1137
    .line 1138
    move-result v10

    .line 1139
    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1140
    .line 1141
    .line 1142
    const/16 v5, 0x50

    .line 1143
    .line 1144
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1145
    .line 1146
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1147
    .line 1148
    new-instance v1, Landroid/view/View;

    .line 1149
    .line 1150
    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1151
    .line 1152
    .line 1153
    sget v5, Lcom/sgscq/vpn/p5;->C:I

    .line 1154
    .line 1155
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    .line 1160
    .line 1161
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1162
    .line 1163
    const/4 v2, -0x1

    .line 1164
    const/4 v5, -0x2

    .line 1165
    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1166
    .line 1167
    .line 1168
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1169
    .line 1170
    invoke-virtual {v7, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    .line 1172
    .line 1173
    const/4 v1, 0x0

    .line 1174
    invoke-static {v2, v5, v1, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v4

    .line 1178
    move-object/from16 v5, v18

    .line 1179
    .line 1180
    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    .line 1182
    .line 1183
    const/4 v4, 0x1

    .line 1184
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1185
    .line 1186
    .line 1187
    move-result v6

    .line 1188
    invoke-static {v2, v6, v1, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v6

    .line 1192
    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-static {v2, v1, v4, v1, v1}, Lcom/sgscq/vpn/PassportActivity;->b(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-virtual {v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1203
    .line 1204
    .line 1205
    :goto_a
    iget-object v2, v0, Lcom/sgscq/vpn/PassportActivity;->n:Ljava/util/concurrent/ExecutorService;

    .line 1206
    .line 1207
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v3

    .line 1211
    if-eqz v3, :cond_b

    .line 1212
    .line 1213
    goto :goto_b

    .line 1214
    :cond_b
    :try_start_0
    new-instance v3, Lcom/sgscq/vpn/c4;

    .line 1215
    .line 1216
    invoke-direct {v3, v0, v1}, Lcom/sgscq/vpn/c4;-><init>(Lcom/sgscq/vpn/PassportActivity;I)V

    .line 1217
    .line 1218
    .line 1219
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .line 1221
    .line 1222
    :catch_0
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/PassportActivity;->d()V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/PassportActivity;->f()V

    .line 1226
    .line 1227
    .line 1228
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/sgscq/vpn/PassportActivity;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/sgscq/vpn/PassportActivity;->d()V

    return-void
.end method
