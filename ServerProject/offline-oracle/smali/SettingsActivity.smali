.class public Lcom/sgscq/vpn/SettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic Y:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/Switch;

.field public C:Lcom/sgscq/vpn/cloud/d0;

.field public D:Landroid/widget/Button;

.field public E:Landroid/widget/Switch;

.field public F:Landroid/widget/RadioButton;

.field public G:Landroid/widget/RadioButton;

.field public H:Landroid/widget/RadioButton;

.field public I:Landroid/widget/EditText;

.field public J:Landroid/widget/EditText;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/Button;

.field public M:Z

.field public N:Landroid/widget/Switch;

.field public O:Landroid/widget/AutoCompleteTextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/Button;

.field public R:Z

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/Switch;

.field public W:[Landroid/widget/Button;

.field public X:I

.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/ScrollView;

.field public j:Landroid/widget/LinearLayout;

.field public k:Lcom/sgscq/vpn/h;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/sgscq/vpn/cloud/q0;

.field public n:Lm/e;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/Button;

.field public q:Landroid/widget/Button;

.field public r:Landroid/widget/Button;

.field public s:Landroid/widget/Button;

.field public t:Landroid/widget/ProgressBar;

.field public u:Landroid/widget/TextView;

.field public final v:Landroid/os/Handler;

.field public final w:Lcom/sgscq/vpn/o6;

.field public x:Lcom/sgscq/vpn/b0;

.field public y:Landroid/widget/TextView;

.field public z:Lcom/sgscq/vpn/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->v:Landroid/os/Handler;

    new-instance v0, Lcom/sgscq/vpn/o6;

    invoke-direct {v0, p0}, Lcom/sgscq/vpn/o6;-><init>(Lcom/sgscq/vpn/SettingsActivity;)V

    iput-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->w:Lcom/sgscq/vpn/o6;

    const/4 v0, 0x3

    iput v0, p0, Lcom/sgscq/vpn/SettingsActivity;->X:I

    return-void
.end method

.method public static b(Lcom/sgscq/vpn/config/f;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/config/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\u5df2\u542f\u7528 "

    .line 10
    .line 11
    const-string v2, " \u00b7 "

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/sgscq/vpn/config/f;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ":"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/sgscq/vpn/config/f;->d:I

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static j(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/sgscq/vpn/cloud/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/sgscq/vpn/cloud/a0;

    .line 7
    .line 8
    iget v1, v0, Lcom/sgscq/vpn/cloud/a0;->c:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "\uff08"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v0, v0, Lcom/sgscq/vpn/cloud/a0;->c:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " \u79d2\u540e\u53ef\u91cd\u8bd5\uff09"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_0
    if-nez p0, :cond_1

    .line 45
    .line 46
    const-string p0, "\u672a\u77e5\u9519\u8bef"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_0
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    :cond_2
    const-string p0, "\u4e91\u670d\u52a1\u8bf7\u6c42\u5931\u8d25"

    .line 62
    .line 63
    :cond_3
    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/16 v0, 0xb7

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->W:[Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->W:[Landroid/widget/Button;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget v3, p0, Lcom/sgscq/vpn/SettingsActivity;->X:I

    if-ne v1, v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    sget v3, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/sgscq/vpn/p5;->C:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final B()Z
    .locals 6

    .line 1
    const-class v0, Lcom/sgscq/vpn/cloud/m0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/sgscq/vpn/cloud/m0;->a:Z

    .line 5
    .line 6
    sget v2, Lcom/sgscq/vpn/cloud/m0;->b:I

    .line 7
    .line 8
    sget v3, Lcom/sgscq/vpn/cloud/m0;->c:I

    .line 9
    .line 10
    sget v4, Lcom/sgscq/vpn/cloud/m0;->d:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return v5

    .line 25
    :cond_0
    invoke-virtual {p0, v2, v3, v4}, Lcom/sgscq/vpn/SettingsActivity;->x(III)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    .line 32
    throw v1
.end method

.method public final C(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final D()Z
    .locals 6

    .line 1
    const-string v0, "\u5df2\u542f\u7528 \u00b7 "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/sgscq/vpn/SettingsActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-static {p0}, Lq/e;->a(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lq/e;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    invoke-static {v1}, Lq/e;->b(Ljava/lang/String;)Lc/i;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/4 v3, 0x1

    .line 30
    :try_start_2
    iput-boolean v3, p0, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 31
    .line 32
    iget-object v4, p0, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 33
    .line 34
    iget-object v5, v1, Lc/i;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v4, v5, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 44
    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lc/i;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const-string v0, "APP DNS \u5df2\u4fdd\u5b58\u5e76\u542f\u7528"

    .line 70
    .line 71
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    return v3

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget v3, Lcom/sgscq/vpn/p5;->D:I

    .line 88
    .line 89
    invoke-virtual {p0, v1, v3}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    .line 107
    .line 108
    return v2
.end method

.method public final E(IZ)V
    .locals 3

    .line 1
    invoke-static {p1, p0, p2}, Lcom/sgscq/vpn/p5;->h1(ILandroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Lcom/sgscq/vpn/p7;->e:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->E0(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2, v1, p2}, Lcom/sgscq/vpn/p5;->h1(ILandroid/content/Context;Z)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/sgscq/vpn/i7;

    .line 21
    .line 22
    invoke-direct {v1, v0, p2, v2}, Lcom/sgscq/vpn/i7;-><init>(Lcom/sgscq/vpn/p7;ZI)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/sgscq/vpn/p7;->u:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 28
    .line 29
    .line 30
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "\u5df2\u542f\u7528\u83c1\u82f1\u5bf9\u624b L"

    .line 35
    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->E0(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, "\uff0c\u5929\u68af\u9a7b\u5b88\u66f4\u65b0\u4e2d"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string p1, "\u5df2\u5173\u95ed\u83c1\u82f1\u5bf9\u624b\uff0c\u5929\u68af\u9a7b\u5b88\u66f4\u65b0\u4e2d"

    .line 57
    .line 58
    :goto_1
    const/4 p2, 0x0

    .line 59
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final F()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "socks5"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "https"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "http"

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    invoke-static {p0}, Lq/o;->a(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object v4, Lq/o;->a:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {v0, v1, v2}, Lq/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/config/f;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const/4 v2, 0x1

    .line 58
    :try_start_2
    iput-boolean v2, p0, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 59
    .line 60
    iget-object v4, p0, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 63
    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 66
    .line 67
    invoke-static {v0}, Lcom/sgscq/vpn/SettingsActivity;->b(Lcom/sgscq/vpn/config/f;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget v4, Lcom/sgscq/vpn/p5;->B:I

    .line 72
    .line 73
    invoke-virtual {p0, v0, v4}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string v0, "\u624b\u52a8\u4ee3\u7406\u5df2\u4fdd\u5b58\u5e76\u542f\u7528"

    .line 77
    .line 78
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget v4, Lcom/sgscq/vpn/p5;->D:I

    .line 95
    .line 96
    invoke-virtual {p0, v2, v4}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    .line 127
    .line 128
    return v3
.end method

.method public final G(Ljava/lang/String;F)Landroid/widget/TextView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    sget p1, Lcom/sgscq/vpn/p5;->C:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method public final H(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sgscq/vpn/SettingsActivity;->I(ZZZZ)V

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    sget v0, Lcom/sgscq/vpn/p5;->C:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final I(ZZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->q:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->r:Landroid/widget/Button;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public final J(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final K(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sgscq/vpn/m6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sgscq/vpn/m6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Ljava/lang/Exception;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final L(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final M(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 5

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
    const/high16 p1, 0x41400000    # 12.0f

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
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0xc

    .line 32
    .line 33
    const/16 v3, 0xe

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v3, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_0
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v3, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    :goto_1
    invoke-virtual {v0, v1, p1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 65
    .line 66
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 70
    .line 71
    .line 72
    const/16 p1, 0x8

    .line 73
    .line 74
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 88
    .line 89
    .line 90
    sget p2, Lcom/sgscq/vpn/p5;->x:I

    .line 91
    .line 92
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    .line 94
    .line 95
    sget p2, Lcom/sgscq/vpn/p5;->x:I

    .line 96
    .line 97
    invoke-static {p1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    int-to-float p1, p1

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 111
    .line 112
    invoke-static {p2, p1, v2}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public final N()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "hd"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "hd_image.zip"

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 31
    .line 32
    const-string v1, "\u672a\u5bfc\u5165"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 38
    .line 39
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string v2, "\u6b63\u5728\u7edf\u8ba1..."

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    new-instance v3, Ljava/lang/Thread;

    .line 57
    .line 58
    new-instance v4, Lcom/sgscq/vpn/a6;

    .line 59
    .line 60
    invoke-direct {v4, p0, v0, v1, v2}, Lcom/sgscq/vpn/a6;-><init>(Lcom/sgscq/vpn/SettingsActivity;Ljava/io/File;J)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->q0(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :try_start_0
    const-string v2, "notification"

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/NotificationManager;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v2, v1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    :cond_2
    :goto_0
    move v2, v0

    .line 34
    :goto_1
    if-eqz v2, :cond_3

    .line 35
    .line 36
    move v1, v0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    const-string v2, "\u901a\u77e5\u6743\u9650\uff1a\u5df2\u5f00\u542f\uff0c\u5145\u503c\u5230\u8d26\u4e0e VPN \u72b6\u6001\u63d0\u9192\u53ef\u6b63\u5e38\u6536\u5230"

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_4
    const-string v2, "\u901a\u77e5\u6743\u9650\uff1a\u672a\u5f00\u542f\uff0c\u901a\u77e5\u4f1a\u88ab\u7cfb\u7edf\u4e22\u5f03\uff08\u5145\u503c\u5230\u8d26\u63d0\u9192\u3001VPN \u72b6\u6001\u63d0\u9192\u6536\u4e0d\u5230\uff09"

    .line 45
    .line 46
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_5
    sget v1, Lcom/sgscq/vpn/p5;->D:I

    .line 57
    .line 58
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x12

    .line 16
    .line 17
    :goto_0
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xc

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 p2, 0x10

    .line 31
    .line 32
    invoke-static {p2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_1
    invoke-virtual {v0, v1, p2, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    .line 40
    .line 41
    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    .line 55
    .line 56
    sget v1, Lcom/sgscq/vpn/p5;->z:I

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public final Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    const/high16 v3, 0x60000

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/sgscq/vpn/f1;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-direct {v3, p3, p2, v4}, Lcom/sgscq/vpn/f1;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/sgscq/vpn/h1;

    .line 49
    .line 50
    invoke-direct {p2, p1, v0}, Lcom/sgscq/vpn/h1;-><init>(Landroid/widget/EditText;Landroid/widget/LinearLayout;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    .line 55
    .line 56
    new-instance p2, Lcom/sgscq/vpn/i1;

    .line 57
    .line 58
    invoke-direct {p2, p1, v0, v1}, Lcom/sgscq/vpn/i1;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Lcom/sgscq/vpn/j1;

    .line 65
    .line 66
    invoke-direct {p2, p1, v0}, Lcom/sgscq/vpn/j1;-><init>(Landroid/widget/EditText;Landroid/widget/LinearLayout;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/sgscq/vpn/k1;

    .line 73
    .line 74
    invoke-direct {p2, v0}, Lcom/sgscq/vpn/k1;-><init>(Landroid/widget/LinearLayout;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    .line 82
    const/4 p3, -0x1

    .line 83
    const/4 v1, -0x2

    .line 84
    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public final a()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/sgscq/vpn/p5;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    .line 15
    .line 16
    const/16 v4, 0x10

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 19
    .line 20
    .line 21
    const/16 v4, 0xe

    .line 22
    .line 23
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/16 v6, 0xc

    .line 28
    .line 29
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    const/16 v4, 0xa

    .line 45
    .line 46
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    sget v6, Lcom/sgscq/vpn/p5;->I:I

    .line 51
    .line 52
    sget v7, Lcom/sgscq/vpn/p5;->y:I

    .line 53
    .line 54
    invoke-virtual {p0, v5, v6, v7}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-virtual {v5, v1, v1, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    const-string v8, "\u25cf "

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-string v8, ""

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const/high16 p1, 0x41600000    # 14.0f

    .line 107
    .line 108
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    .line 110
    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    sget p1, Lcom/sgscq/vpn/p5;->F:I

    .line 117
    .line 118
    :goto_2
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 122
    .line 123
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    const/high16 p3, 0x41400000    # 12.0f

    .line 138
    .line 139
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    .line 141
    .line 142
    sget p3, Lcom/sgscq/vpn/p5;->G:I

    .line 143
    .line 144
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    const/4 p1, -0x2

    .line 151
    invoke-static {v1, p1, v0, v1, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-virtual {v3, v5, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    if-nez v2, :cond_4

    .line 159
    .line 160
    sget p3, Lcom/sgscq/vpn/p5;->D:I

    .line 161
    .line 162
    new-instance v0, Lcom/sgscq/vpn/h6;

    .line 163
    .line 164
    invoke-direct {v0, p0, p2, v1}, Lcom/sgscq/vpn/h6;-><init>(Lcom/sgscq/vpn/SettingsActivity;II)V

    .line 165
    .line 166
    .line 167
    const-string p2, "\u5220\u9664"

    .line 168
    .line 169
    invoke-virtual {p0, p2, p3, v0}, Lcom/sgscq/vpn/SettingsActivity;->M(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_3

    .line 178
    .line 179
    const/16 p3, 0x24

    .line 180
    .line 181
    :goto_3
    invoke-static {p3, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    goto :goto_4

    .line 186
    :cond_3
    const/16 p3, 0x2c

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_4
    invoke-static {p1, p3, v1, v1, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {v3, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_4
    new-instance p2, Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    const-string p3, "\u9ed8\u8ba4"

    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    const/high16 p3, 0x41300000    # 11.0f

    .line 208
    .line 209
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    .line 211
    .line 212
    sget p3, Lcom/sgscq/vpn/p5;->H:I

    .line 213
    .line 214
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    .line 222
    const/4 p3, -0x1

    .line 223
    invoke-direct {p2, p3, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .line 225
    .line 226
    invoke-static {v4, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 231
    .line 232
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 233
    .line 234
    invoke-virtual {p1, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public final d(FII)Landroid/widget/LinearLayout;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    .line 15
    .line 16
    const-string v5, "\u7231\u53d1\u7535\u6743\u76ca"

    .line 17
    .line 18
    invoke-virtual {v0, v5, v1}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, -0x1

    .line 23
    const/4 v7, -0x2

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-static {v6, v7, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/16 v9, 0x1c

    .line 37
    .line 38
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    const/4 v10, 0x2

    .line 43
    invoke-static {v10, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v9, v10, v4}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    const/high16 v5, 0x41400000    # 12.0f

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/high16 v5, 0x41500000    # 13.0f

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    .line 78
    .line 79
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v5, Lcom/sgscq/vpn/p5;->G:I

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 87
    .line 88
    const/16 v5, 0x8

    .line 89
    .line 90
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const/16 v10, 0xa

    .line 95
    .line 96
    invoke-static {v10, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-virtual {v4, v8, v9, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {v6, v7, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sget v9, Lcom/sgscq/vpn/p5;->I:I

    .line 117
    .line 118
    sget v11, Lcom/sgscq/vpn/p5;->y:I

    .line 119
    .line 120
    invoke-virtual {v0, v4, v9, v11}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 121
    .line 122
    .line 123
    sget v4, Lcom/sgscq/vpn/p5;->y:I

    .line 124
    .line 125
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    int-to-float v9, v9

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 139
    .line 140
    invoke-static {v4, v9, v11}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 141
    .line 142
    .line 143
    new-instance v4, Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    .line 150
    .line 151
    const/16 v9, 0x10

    .line 152
    .line 153
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 154
    .line 155
    .line 156
    sget v9, Lcom/sgscq/vpn/p5;->B:I

    .line 157
    .line 158
    const/16 v11, 0x13

    .line 159
    .line 160
    const-string v12, "\u767b\u5f55"

    .line 161
    .line 162
    invoke-static {v0, v11, v12, v9}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    sget v11, Lcom/sgscq/vpn/p5;->C:I

    .line 167
    .line 168
    const/16 v12, 0x14

    .line 169
    .line 170
    const-string v13, "\u5237\u65b0"

    .line 171
    .line 172
    invoke-static {v0, v12, v13, v11}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    sget v12, Lcom/sgscq/vpn/p5;->D:I

    .line 177
    .line 178
    const/16 v13, 0x15

    .line 179
    .line 180
    const-string v14, "\u89e3\u7ed1"

    .line 181
    .line 182
    invoke-static {v0, v13, v14, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    const/high16 v14, 0x3f800000    # 1.0f

    .line 189
    .line 190
    invoke-direct {v13, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v9, Landroid/view/View;

    .line 197
    .line 198
    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    .line 203
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    invoke-direct {v13, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    invoke-direct {v9, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance v9, Landroid/view/View;

    .line 222
    .line 223
    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    .line 228
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-direct {v11, v13, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .line 240
    invoke-direct {v9, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    invoke-static {v6, v7, v8, v8, v9}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    new-instance v4, Landroid/widget/TextView;

    .line 258
    .line 259
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    const-string v9, "\u672c\u5730\u4fdd\u5b58\u6743\u76ca\u7ed3\u679c\uff0c\u7528\u4e8e\u5355\u673a\u798f\u5229\u5224\u65ad\u3002"

    .line 263
    .line 264
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    const/high16 v9, 0x41300000    # 11.0f

    .line 268
    .line 269
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    .line 271
    .line 272
    sget v11, Lcom/sgscq/vpn/p5;->H:I

    .line 273
    .line 274
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    const/16 v11, 0x11

    .line 278
    .line 279
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    .line 281
    .line 282
    const/16 v12, 0xe

    .line 283
    .line 284
    invoke-static {v12, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    invoke-static {v6, v7, v8, v8, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    invoke-virtual {v3, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    .line 294
    .line 295
    const-string v4, "\u4e91\u7aef\u89d2\u8272"

    .line 296
    .line 297
    invoke-virtual {v0, v4, v1}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    sget v4, Lcom/sgscq/vpn/p5;->B:I

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    .line 305
    .line 306
    invoke-static {v6, v7, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .line 312
    .line 313
    new-instance v1, Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 316
    .line 317
    .line 318
    iput-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_1

    .line 325
    .line 326
    const/high16 v4, 0x41400000    # 12.0f

    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_1
    const/high16 v4, 0x41500000    # 13.0f

    .line 330
    .line 331
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 335
    .line 336
    sget v4, Lcom/sgscq/vpn/p5;->G:I

    .line 337
    .line 338
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    .line 340
    .line 341
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 342
    .line 343
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    invoke-static {v10, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    invoke-virtual {v1, v8, v4, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 355
    .line 356
    invoke-static {v6, v7, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Landroid/widget/LinearLayout;

    .line 364
    .line 365
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    .line 370
    .line 371
    const/16 v4, 0x10

    .line 372
    .line 373
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 374
    .line 375
    .line 376
    new-instance v4, Landroid/widget/Switch;

    .line 377
    .line 378
    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 379
    .line 380
    .line 381
    iput-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 382
    .line 383
    const-string v10, "\u81ea\u52a8\u4e0a\u4f20\u4e91\u5b58\u6863"

    .line 384
    .line 385
    invoke-virtual {v4, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    iget-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 389
    .line 390
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 391
    .line 392
    .line 393
    new-instance v4, Landroid/widget/TextView;

    .line 394
    .line 395
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    const/high16 v10, 0x41400000    # 12.0f

    .line 402
    .line 403
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 404
    .line 405
    .line 406
    sget v12, Lcom/sgscq/vpn/p5;->C:I

    .line 407
    .line 408
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .line 410
    .line 411
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 416
    .line 417
    .line 418
    move-result v13

    .line 419
    invoke-virtual {v4, v12, v8, v13, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 420
    .line 421
    .line 422
    iget-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 423
    .line 424
    invoke-static {v7, v2, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object v13

    .line 428
    invoke-virtual {v1, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .line 430
    .line 431
    const/4 v12, 0x1

    .line 432
    invoke-static {v7, v2, v12, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    invoke-virtual {v1, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    .line 438
    .line 439
    sget v4, Lcom/sgscq/vpn/p5;->D:I

    .line 440
    .line 441
    const/16 v12, 0x19

    .line 442
    .line 443
    const-string v13, "\u5220\u9664\u4e91\u5b58\u6863"

    .line 444
    .line 445
    invoke-static {v0, v12, v13, v4}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    iput-object v4, v0, Lcom/sgscq/vpn/SettingsActivity;->D:Landroid/widget/Button;

    .line 450
    .line 451
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    invoke-static {v7, v2, v8, v8, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 456
    .line 457
    .line 458
    move-result-object v12

    .line 459
    invoke-virtual {v1, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .line 461
    .line 462
    new-instance v4, Landroid/widget/LinearLayout;

    .line 463
    .line 464
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    .line 469
    .line 470
    const/16 v12, 0x10

    .line 471
    .line 472
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 473
    .line 474
    .line 475
    sget v12, Lcom/sgscq/vpn/p5;->B:I

    .line 476
    .line 477
    const/16 v13, 0x1a

    .line 478
    .line 479
    const-string v15, "\u4e0a\u4f20"

    .line 480
    .line 481
    invoke-static {v0, v13, v15, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 482
    .line 483
    .line 484
    move-result-object v12

    .line 485
    iput-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->p:Landroid/widget/Button;

    .line 486
    .line 487
    sget v12, Lcom/sgscq/vpn/p5;->C:I

    .line 488
    .line 489
    const/16 v13, 0x1b

    .line 490
    .line 491
    const-string v15, "\u4e0b\u8f7d"

    .line 492
    .line 493
    invoke-static {v0, v13, v15, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 494
    .line 495
    .line 496
    move-result-object v12

    .line 497
    iput-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->q:Landroid/widget/Button;

    .line 498
    .line 499
    sget v12, Lcom/sgscq/vpn/p5;->C:I

    .line 500
    .line 501
    const/16 v13, 0x1c

    .line 502
    .line 503
    const-string v15, "\u540c\u6b65\u4e91\u5bf9\u624b"

    .line 504
    .line 505
    invoke-static {v0, v13, v15, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    iput-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->r:Landroid/widget/Button;

    .line 510
    .line 511
    sget v12, Lcom/sgscq/vpn/p5;->D:I

    .line 512
    .line 513
    const/16 v13, 0x1d

    .line 514
    .line 515
    const-string v15, "\u7981\u7528\u4e91\u5bf9\u624b"

    .line 516
    .line 517
    invoke-static {v0, v13, v15, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    iput-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    .line 522
    .line 523
    iget-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->p:Landroid/widget/Button;

    .line 524
    .line 525
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 526
    .line 527
    invoke-direct {v13, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    .line 532
    .line 533
    new-instance v12, Landroid/view/View;

    .line 534
    .line 535
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    .line 540
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 541
    .line 542
    .line 543
    move-result v15

    .line 544
    invoke-direct {v13, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    .line 549
    .line 550
    iget-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->q:Landroid/widget/Button;

    .line 551
    .line 552
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 553
    .line 554
    invoke-direct {v13, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    .line 559
    .line 560
    new-instance v12, Landroid/view/View;

    .line 561
    .line 562
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 563
    .line 564
    .line 565
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 566
    .line 567
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 568
    .line 569
    .line 570
    move-result v15

    .line 571
    invoke-direct {v13, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    .line 576
    .line 577
    iget-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->r:Landroid/widget/Button;

    .line 578
    .line 579
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 580
    .line 581
    invoke-direct {v13, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    .line 586
    .line 587
    new-instance v12, Landroid/view/View;

    .line 588
    .line 589
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 590
    .line 591
    .line 592
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 593
    .line 594
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 595
    .line 596
    .line 597
    move-result v15

    .line 598
    invoke-direct {v13, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    .line 603
    .line 604
    iget-object v12, v0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    .line 605
    .line 606
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 607
    .line 608
    invoke-direct {v13, v8, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    .line 613
    .line 614
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    invoke-static {v6, v7, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    .line 624
    .line 625
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    invoke-static {v6, v7, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    .line 635
    .line 636
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 637
    .line 638
    new-instance v2, Lcom/sgscq/vpn/j6;

    .line 639
    .line 640
    const/4 v4, 0x4

    .line 641
    invoke-direct {v2, v0, v4}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 645
    .line 646
    .line 647
    new-instance v1, Landroid/widget/ProgressBar;

    .line 648
    .line 649
    const/4 v2, 0x0

    .line 650
    const v12, 0x1010078

    .line 651
    .line 652
    .line 653
    invoke-direct {v1, v0, v2, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 654
    .line 655
    .line 656
    iput-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    .line 657
    .line 658
    const/16 v2, 0x64

    .line 659
    .line 660
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 661
    .line 662
    .line 663
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    .line 664
    .line 665
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    .line 667
    .line 668
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    .line 669
    .line 670
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 675
    .line 676
    .line 677
    move-result v4

    .line 678
    invoke-static {v6, v2, v8, v8, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    .line 684
    .line 685
    new-instance v1, Landroid/widget/TextView;

    .line 686
    .line 687
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 688
    .line 689
    .line 690
    iput-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    .line 691
    .line 692
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    if-eqz v2, :cond_2

    .line 697
    .line 698
    move v10, v9

    .line 699
    :cond_2
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 700
    .line 701
    .line 702
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    .line 703
    .line 704
    sget v2, Lcom/sgscq/vpn/p5;->C:I

    .line 705
    .line 706
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    .line 708
    .line 709
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    .line 710
    .line 711
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 712
    .line 713
    .line 714
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    .line 715
    .line 716
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 717
    .line 718
    .line 719
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    .line 720
    .line 721
    invoke-static {v5, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    invoke-static {v6, v7, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    .line 731
    .line 732
    new-instance v1, Landroid/widget/TextView;

    .line 733
    .line 734
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 735
    .line 736
    .line 737
    const-string v2, "\u4e0a\u4f20\u548c\u4e0b\u8f7d\u53ea\u5904\u7406\u672c\u4eba\u4e91\u5b58\u6863\uff0c\u5e76\u6309\u6240\u9009\u65b9\u5411\u76f4\u63a5\u66ff\u6362\uff1b\u81ea\u52a8\u4e0a\u4f20\u4ec5\u5728\u6e38\u73a9\u672c\u4eba\u4e91\u5b58\u6863\u4e14\u672c\u5730\u6709\u53d8\u5316\u65f6\u5b9a\u65f6\u4e0a\u4f20\uff08\u9ed8\u8ba4\u5173\u95ed\uff09\uff1b\u5220\u9664\u4e91\u5b58\u6863\u4f1a\u540c\u65f6\u5220\u9664\u672c\u5730\u8be5\u4e91\u62a4\u7167\u8fdb\u5ea6\uff0c\u4e4b\u540e\u53ef\u65b0\u5efa\u65b0\u4e91\u5b58\u6863\u3002"

    .line 738
    .line 739
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 743
    .line 744
    .line 745
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 746
    .line 747
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 751
    .line 752
    .line 753
    move/from16 v2, p3

    .line 754
    .line 755
    invoke-static {v6, v7, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    .line 761
    .line 762
    return-object v3
.end method

.method public final e(FII)Landroid/widget/LinearLayout;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const-string v4, "B \u7ad9\u7c89\u4e1d\u798f\u5229"

    .line 15
    .line 16
    move/from16 v5, p1

    .line 17
    .line 18
    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, -0x2

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-static {v5, v6, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v8, 0x1c

    .line 37
    .line 38
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/4 v9, 0x2

    .line 43
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-static {v3, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v8, v9, v3}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    const/high16 v4, 0x41400000    # 12.0f

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/high16 v4, 0x41500000    # 13.0f

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v4, Lcom/sgscq/vpn/p5;->G:I

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 87
    .line 88
    const/16 v4, 0x8

    .line 89
    .line 90
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    const/16 v9, 0xa

    .line 95
    .line 96
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-virtual {v3, v7, v8, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {v5, v6, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    .line 119
    .line 120
    const/16 v8, 0x10

    .line 121
    .line 122
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    .line 124
    .line 125
    sget v9, Lcom/sgscq/vpn/p5;->B:I

    .line 126
    .line 127
    const/16 v10, 0xf

    .line 128
    .line 129
    const-string v11, "\u5173\u6ce8"

    .line 130
    .line 131
    invoke-static {v0, v10, v11, v9}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    sget v10, Lcom/sgscq/vpn/p5;->B:I

    .line 136
    .line 137
    const-string v11, "\u7ed1\u5b9a"

    .line 138
    .line 139
    invoke-static {v0, v8, v11, v10}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    sget v10, Lcom/sgscq/vpn/p5;->C:I

    .line 144
    .line 145
    const/16 v11, 0x11

    .line 146
    .line 147
    const-string v12, "\u5237\u65b0"

    .line 148
    .line 149
    invoke-static {v0, v11, v12, v10}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    sget v12, Lcom/sgscq/vpn/p5;->D:I

    .line 154
    .line 155
    const/16 v13, 0x12

    .line 156
    .line 157
    const-string v14, "\u89e3\u7ed1"

    .line 158
    .line 159
    invoke-static {v0, v13, v14, v12}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    const/high16 v14, 0x3f800000    # 1.0f

    .line 166
    .line 167
    invoke-direct {v13, v7, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    new-instance v9, Landroid/view/View;

    .line 174
    .line 175
    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    .line 180
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    invoke-direct {v13, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    invoke-direct {v9, v7, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    new-instance v8, Landroid/view/View;

    .line 199
    .line 200
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .line 205
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-direct {v9, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .line 217
    invoke-direct {v8, v7, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    new-instance v8, Landroid/view/View;

    .line 224
    .line 225
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .line 230
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    invoke-direct {v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v8, v7, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    invoke-static {v5, v6, v7, v7, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    const-string v3, "\u5173\u6ce8UP\u4e3b\u6709\u798f\u5229\u54e6\uff01\uff08\u5173\u6ce8\u540e1\u5929\u751f\u6548\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\uff09"

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    const/high16 v3, 0x41300000    # 11.0f

    .line 270
    .line 271
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    .line 273
    .line 274
    sget v3, Lcom/sgscq/vpn/p5;->H:I

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    .line 281
    .line 282
    move/from16 v3, p3

    .line 283
    .line 284
    invoke-static {v5, v6, v7, v7, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->u()V

    .line 292
    .line 293
    .line 294
    return-object v2
.end method

.method public final f(FII)Landroid/widget/LinearLayout;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const-string v4, "\u6296\u97f3\u7c89\u4e1d\u798f\u5229"

    .line 15
    .line 16
    move/from16 v5, p1

    .line 17
    .line 18
    invoke-virtual {v0, v4, v5}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, -0x1

    .line 23
    const/4 v6, -0x2

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-static {v5, v6, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v8, 0x1c

    .line 37
    .line 38
    invoke-static {v8, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/4 v9, 0x2

    .line 43
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-static {v3, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v8, v9, v3}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    const/high16 v4, 0x41400000    # 12.0f

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/high16 v4, 0x41500000    # 13.0f

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v4, Lcom/sgscq/vpn/p5;->G:I

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 87
    .line 88
    const/16 v4, 0x8

    .line 89
    .line 90
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    const/16 v9, 0xa

    .line 95
    .line 96
    invoke-static {v9, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    invoke-virtual {v3, v7, v8, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {v5, v6, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    .line 119
    .line 120
    const/16 v8, 0x10

    .line 121
    .line 122
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    .line 124
    .line 125
    sget v8, Lcom/sgscq/vpn/p5;->B:I

    .line 126
    .line 127
    const/16 v9, 0xb

    .line 128
    .line 129
    const-string v10, "\u5173\u6ce8"

    .line 130
    .line 131
    invoke-static {v0, v9, v10, v8}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    sget v9, Lcom/sgscq/vpn/p5;->B:I

    .line 136
    .line 137
    const/16 v10, 0xc

    .line 138
    .line 139
    const-string v11, "\u767b\u5f55"

    .line 140
    .line 141
    invoke-static {v0, v10, v11, v9}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    sget v10, Lcom/sgscq/vpn/p5;->C:I

    .line 146
    .line 147
    const/16 v11, 0xd

    .line 148
    .line 149
    const-string v12, "\u5237\u65b0"

    .line 150
    .line 151
    invoke-static {v0, v11, v12, v10}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    sget v11, Lcom/sgscq/vpn/p5;->D:I

    .line 156
    .line 157
    const/16 v12, 0xe

    .line 158
    .line 159
    const-string v13, "\u89e3\u7ed1"

    .line 160
    .line 161
    invoke-static {v0, v12, v13, v11}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    const/high16 v13, 0x3f800000    # 1.0f

    .line 168
    .line 169
    invoke-direct {v12, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    new-instance v8, Landroid/view/View;

    .line 176
    .line 177
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    .line 182
    const/4 v14, 0x6

    .line 183
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    invoke-direct {v12, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .line 195
    invoke-direct {v8, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    new-instance v8, Landroid/view/View;

    .line 202
    .line 203
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    .line 208
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    invoke-direct {v9, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .line 220
    invoke-direct {v8, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    new-instance v8, Landroid/view/View;

    .line 227
    .line 228
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .line 233
    invoke-static {v14, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    invoke-direct {v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .line 245
    invoke-direct {v8, v7, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v4, v0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-static {v5, v6, v7, v7, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    const-string v3, "\u5173\u6ce8\u6296\u97f3\u53f7 2107174701 \u6709\u798f\u5229\u54e6\uff01\uff08\u5173\u6ce8\u540e\u81ea\u52a8\u5237\u65b0\u53ef\u80fd\u7a0d\u6709\u5ef6\u8fdf\uff09"

    .line 268
    .line 269
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    const/high16 v3, 0x41300000    # 11.0f

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    .line 276
    .line 277
    sget v3, Lcom/sgscq/vpn/p5;->H:I

    .line 278
    .line 279
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    const/16 v3, 0x11

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    .line 286
    .line 287
    move/from16 v3, p3

    .line 288
    .line 289
    invoke-static {v5, v6, v7, v7, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->w()V

    .line 297
    .line 298
    .line 299
    return-object v2
.end method

.method public final g(FII)Landroid/widget/LinearLayout;
    .locals 11

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u5929\u68af\u83c1\u82f1\u5bf9\u624b"

    .line 11
    .line 12
    invoke-virtual {p0, v2, p1}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, -0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 v5, 0x1c

    .line 31
    .line 32
    invoke-static {v5, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-static {v5, v7, v8}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    .line 59
    .line 60
    const/16 v5, 0x10

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const-string v8, "\u542f\u7528\u83c1\u82f1\u5bf9\u624b"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_0

    .line 80
    .line 81
    const/high16 v9, 0x41400000    # 12.0f

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/high16 v9, 0x41500000    # 13.0f

    .line 85
    .line 86
    :goto_0
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    .line 88
    .line 89
    sget v9, Lcom/sgscq/vpn/p5;->F:I

    .line 90
    .line 91
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4, v3, v1, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    new-instance v7, Landroid/widget/Switch;

    .line 102
    .line 103
    invoke-direct {v7, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v7, p0, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 112
    .line 113
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 114
    .line 115
    .line 116
    iget-object v7, p0, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 117
    .line 118
    invoke-static {v3, p2, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    const/4 v7, 0x6

    .line 126
    invoke-static {v7, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-static {v7, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v2, v3, v4, v8, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v0, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    new-instance p1, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 150
    .line 151
    .line 152
    const/4 v5, 0x3

    .line 153
    new-array v7, v5, [Landroid/widget/Button;

    .line 154
    .line 155
    iput-object v7, p0, Lcom/sgscq/vpn/SettingsActivity;->W:[Landroid/widget/Button;

    .line 156
    .line 157
    move v7, v1

    .line 158
    :goto_1
    if-gt v7, v5, :cond_2

    .line 159
    .line 160
    const-string v8, "L"

    .line 161
    .line 162
    invoke-static {v8, v7}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    sget v9, Lcom/sgscq/vpn/p5;->C:I

    .line 167
    .line 168
    new-instance v10, Lcom/sgscq/vpn/h6;

    .line 169
    .line 170
    invoke-direct {v10, p0, v7, v1}, Lcom/sgscq/vpn/h6;-><init>(Lcom/sgscq/vpn/SettingsActivity;II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v8, v9, v10}, Lcom/sgscq/vpn/SettingsActivity;->M(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    iget-object v9, p0, Lcom/sgscq/vpn/SettingsActivity;->W:[Landroid/widget/Button;

    .line 178
    .line 179
    add-int/lit8 v10, v7, -0x1

    .line 180
    .line 181
    aput-object v8, v9, v10

    .line 182
    .line 183
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    const/high16 v10, 0x3f800000    # 1.0f

    .line 186
    .line 187
    invoke-direct {v9, v4, p2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    if-ge v7, v5, :cond_1

    .line 194
    .line 195
    new-instance v8, Landroid/view/View;

    .line 196
    .line 197
    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    .line 202
    const/16 v10, 0x8

    .line 203
    .line 204
    invoke-static {v10, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    invoke-direct {v9, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_2
    const/4 p2, 0x4

    .line 218
    invoke-static {p2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-static {v2, v3, v4, v4, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    const-string v1, "L1 10\u91cd10\u953b+\u6280\u80fd2\u9636 \u00b7 L2 10\u91cd11\u953b+\u6280\u80fd5\u9636 \u00b7 L3 10\u91cd11\u953b+\u6280\u80fd5\u9636+\u89c9\u9192+\u7ec3\u8109\uff08\u4ec5\u4e3b\u529b\u751f\u6548\uff09\u3002\n\u5173\u95ed\u65f6\u5929\u68af\u65e0\u83c1\u82f1\u5bf9\u624b\uff1b\u5207\u6362\u540e\u7acb\u5373\u751f\u6548\uff0c\u771f\u4eba\u540d\u6b21\u4e0d\u53d7\u5f71\u54cd\u3002"

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    const/high16 v1, 0x41300000    # 11.0f

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    .line 243
    .line 244
    sget v1, Lcom/sgscq/vpn/p5;->H:I

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    .line 248
    .line 249
    const/16 v1, 0x11

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    .line 253
    .line 254
    invoke-static {p2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    invoke-static {v2, v3, v4, p2, p3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string p2, "sgscq_config_v2"

    .line 270
    .line 271
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string p3, "elite_opponent_level"

    .line 276
    .line 277
    invoke-interface {p1, p3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    invoke-static {p1}, Lcom/sgscq/vpn/p5;->E0(I)I

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    iput p1, p0, Lcom/sgscq/vpn/SettingsActivity;->X:I

    .line 286
    .line 287
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object p3

    .line 293
    invoke-virtual {p3, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    const-string p3, "elite_opponent_enabled"

    .line 298
    .line 299
    invoke-interface {p2, p3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->A()V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->V:Landroid/widget/Switch;

    .line 310
    .line 311
    new-instance p2, Lcom/sgscq/vpn/j6;

    .line 312
    .line 313
    invoke-direct {p2, p0, v6}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    .line 318
    .line 319
    return-object v0
.end method

.method public final h(FII)Landroid/widget/LinearLayout;
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u9ad8\u6e05\u7acb\u7ed8\u8d44\u6e90"

    .line 11
    .line 12
    invoke-virtual {p0, v2, p1}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, -0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 v5, 0x1c

    .line 31
    .line 32
    invoke-static {v5, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v5, v6, v1}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/high16 v1, 0x41400000    # 12.0f

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/high16 v1, 0x41500000    # 13.0f

    .line 69
    .line 70
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 74
    .line 75
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/16 v6, 0xa

    .line 89
    .line 90
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {p1, v4, v5, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 107
    .line 108
    const/4 v5, 0x3

    .line 109
    const-string v6, "\u9009\u62e9\u8d44\u6e90\u5305"

    .line 110
    .line 111
    invoke-static {p0, v5, v6, p1}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v2, p2, v4, v4, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "\u5bfc\u5165\u9ad8\u6e05\u6b66\u5c06\u7acb\u7ed8 ZIP\uff08hd_image.zip\uff09\u3002\u5bfc\u5165\u540e\u8fdb\u5165\u6e38\u620f\u67e5\u770b\u6b66\u5c06\u8be6\u60c5\u5373\u53ef\u663e\u793a\u9ad8\u6e05\u7acb\u7ed8\uff0c\u672a\u8986\u76d6\u7684\u6b66\u5c06\u81ea\u52a8\u4f7f\u7528\u9ed8\u8ba4\u56fe\u3002"

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    const/high16 p2, 0x41300000    # 11.0f

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    .line 140
    .line 141
    sget p2, Lcom/sgscq/vpn/p5;->H:I

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    const/16 p2, 0x11

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v3, v4, v4, p3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->N()V

    .line 159
    .line 160
    .line 161
    return-object v0
.end method

.method public final i(FII)Landroid/widget/LinearLayout;
    .locals 10

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u540e\u53f0\u4fdd\u6d3b"

    .line 11
    .line 12
    invoke-virtual {p0, v2, p1}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, -0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 v5, 0x1c

    .line 31
    .line 32
    invoke-static {v5, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-static {v6, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v5, v6, v1}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/high16 v5, 0x41400000    # 12.0f

    .line 64
    .line 65
    const/high16 v6, 0x41500000    # 13.0f

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    move v1, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move v1, v6

    .line 72
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 76
    .line 77
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/16 v8, 0xa

    .line 91
    .line 92
    invoke-static {v8, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-virtual {p1, v4, v7, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v0, p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move v5, v6

    .line 123
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 127
    .line 128
    sget v5, Lcom/sgscq/vpn/p5;->G:I

    .line 129
    .line 130
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-static {v8, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {p1, v4, v4, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->U:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-static {v2, v3, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 152
    .line 153
    const/16 v5, 0x16

    .line 154
    .line 155
    const-string v6, "\u67e5\u770b\u4fdd\u6d3b\u8bbe\u7f6e"

    .line 156
    .line 157
    invoke-static {p0, v5, v6, p1}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-static {v2, p2, v4, v4, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 173
    .line 174
    const/16 v5, 0x17

    .line 175
    .line 176
    const-string v6, "\u901a\u77e5\u6743\u9650\u8bbe\u7f6e"

    .line 177
    .line 178
    invoke-static {p0, v5, v6, p1}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v2, p2, v4, v4, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v0, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 194
    .line 195
    const/16 v5, 0x18

    .line 196
    .line 197
    const-string v6, "\u81ea\u542f\u52a8/\u540e\u53f0\u7ba1\u7406"

    .line 198
    .line 199
    invoke-static {p0, v5, v6, p1}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v2, p2, v4, v4, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    new-instance p1, Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    const-string p2, "\u7cfb\u7edf\u4f1a\u5728\u540e\u53f0\u5f85\u673a\u51e0\u5206\u949f\u540e\u6e05\u7406\u5e94\u7528\uff0cVPN \u968f\u4e4b\u4e2d\u65ad\u3002\u8bf7\u5141\u8bb8\u5ffd\u7565\u7535\u6c60\u4f18\u5316\u3001\u5f00\u542f\u901a\u77e5\u6743\u9650\uff0c\u5e76\u5728\u5382\u5546\u7684\u5e94\u7528\u542f\u52a8\u7ba1\u7406\u91cc\u5141\u8bb8\u81ea\u542f\u52a8\u3001\u5173\u8054\u542f\u52a8\u3001\u540e\u53f0\u6d3b\u52a8\u3002"

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    const/high16 p2, 0x41300000    # 11.0f

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    .line 228
    .line 229
    sget p2, Lcom/sgscq/vpn/p5;->H:I

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    .line 233
    .line 234
    const/16 p2, 0x11

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v3, v4, v4, p3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 247
    .line 248
    if-nez p1, :cond_2

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->k0(Landroid/content/Context;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    iget-object p2, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz p1, :cond_3

    .line 258
    .line 259
    const-string p3, "\u7535\u6c60\u4f18\u5316\uff1a\u5df2\u8c41\u514d\uff0c\u7cfb\u7edf\u4e0d\u4f1a\u56e0\u7701\u7535\u6e05\u7406\u672c\u5e94\u7528"

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_3
    const-string p3, "\u7535\u6c60\u4f18\u5316\uff1a\u672a\u8c41\u514d\uff0c\u7cfb\u7edf\u53ef\u80fd\u5728\u540e\u53f0\u6e05\u7406\u672c\u5e94\u7528"

    .line 263
    .line 264
    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    iget-object p2, p0, Lcom/sgscq/vpn/SettingsActivity;->T:Landroid/widget/TextView;

    .line 268
    .line 269
    if-eqz p1, :cond_4

    .line 270
    .line 271
    sget p1, Lcom/sgscq/vpn/p5;->B:I

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_4
    sget p1, Lcom/sgscq/vpn/p5;->D:I

    .line 275
    .line 276
    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    .line 278
    .line 279
    :goto_4
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->O()V

    .line 280
    .line 281
    .line 282
    return-object v0
.end method

.method public final l(Landroid/content/Intent;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/sgscq/vpn/h;->g(Landroid/net/Uri;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v1, "\u6b63\u5728\u5b8c\u6210\u7231\u53d1\u7535\u767b\u5f55..."

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 35
    .line 36
    new-instance v1, Lcom/sgscq/vpn/p6;

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/p6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/sgscq/vpn/h;->g(Landroid/net/Uri;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const-string v2, "error"

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const-string v2, "code"

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const-string v3, "state"

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v3, v0, Lcom/sgscq/vpn/h;->c:Landroid/content/SharedPreferences;

    .line 92
    .line 93
    const-string v4, "oauth_state"

    .line 94
    .line 95
    const-string v5, ""

    .line 96
    .line 97
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_6

    .line 114
    .line 115
    const-string p1, "\u7231\u53d1\u7535\u767b\u5f55\u72b6\u6001\u6821\u9a8c\u5931\u8d25"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    new-instance p1, Lcom/sgscq/vpn/a;

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-direct {p1, v0, v2, v3}, Lcom/sgscq/vpn/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/Thread;

    .line 125
    .line 126
    new-instance v2, Lcom/sgscq/vpn/c;

    .line 127
    .line 128
    invoke-direct {v2, p1, p0, v1, v3}, Lcom/sgscq/vpn/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    const-string p1, "AfdianAuth"

    .line 132
    .line 133
    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    :goto_0
    const-string p1, "\u7231\u53d1\u7535\u56de\u8c03\u7f3a\u5c11 code"

    .line 141
    .line 142
    :goto_1
    invoke-virtual {v1, p1}, Lcom/sgscq/vpn/p6;->a(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_2
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final n()Ljava/util/HashSet;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "resources.json"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/sgscq/vpn/o0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v1, v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v4, "hd_url"

    .line 41
    .line 42
    const-string v5, ""

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    const-string v4, "0"

    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final o()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->c:Landroid/widget/EditText;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v2, "player_name"

    .line 6
    .line 7
    const-string v3, "\u73a9\u5bb6"

    .line 8
    .line 9
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->d:Landroid/widget/EditText;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "resource_coin"

    .line 26
    .line 27
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->e:Landroid/widget/EditText;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    const-string v3, "resource_gold"

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->f:Landroid/widget/EditText;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    const/16 v3, 0x96

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "resource_power"

    .line 62
    .line 63
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->g:Landroid/widget/EditText;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 73
    .line 74
    const/16 v3, 0xc

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string v4, "resource_energy"

    .line 81
    .line 82
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 90
    .line 91
    const-string v1, "resource_vip_level"

    .line 92
    .line 93
    const-string v3, "0"

    .line 94
    .line 95
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    if-gez v0, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const/16 v1, 0xf

    .line 107
    .line 108
    if-le v0, v1, :cond_1

    .line 109
    .line 110
    move v0, v1

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    :goto_0
    move v0, v2

    .line 113
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->h:Landroid/widget/EditText;

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    if-nez v0, :cond_2

    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :cond_2
    invoke-static {p0}, Lq/o;->a(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 133
    .line 134
    const-string v3, "service_proxy_type"

    .line 135
    .line 136
    const-string v4, "http"

    .line 137
    .line 138
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 143
    .line 144
    const-string v4, "service_proxy_host"

    .line 145
    .line 146
    const-string v5, ""

    .line 147
    .line 148
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v4, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 153
    .line 154
    const-string v6, "service_proxy_port"

    .line 155
    .line 156
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    sget-object v5, Lq/o;->b:Lcom/sgscq/vpn/config/f;

    .line 161
    .line 162
    iput-boolean v1, p0, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 163
    .line 164
    iget-object v6, p0, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 165
    .line 166
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 175
    .line 176
    const-string v4, "socks5"

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 183
    .line 184
    .line 185
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 186
    .line 187
    const-string v4, "https"

    .line 188
    .line 189
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->F:Landroid/widget/RadioButton;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_3

    .line 205
    .line 206
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 207
    .line 208
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-nez v3, :cond_3

    .line 213
    .line 214
    move v3, v1

    .line 215
    goto :goto_2

    .line 216
    :cond_3
    move v3, v2

    .line 217
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 221
    .line 222
    iget-boolean v3, v5, Lcom/sgscq/vpn/config/f;->a:Z

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    .line 226
    .line 227
    iput-boolean v2, p0, Lcom/sgscq/vpn/SettingsActivity;->M:Z

    .line 228
    .line 229
    iget-boolean v0, v5, Lcom/sgscq/vpn/config/f;->a:Z

    .line 230
    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    invoke-static {v5}, Lcom/sgscq/vpn/SettingsActivity;->b(Lcom/sgscq/vpn/config/f;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sget v3, Lcom/sgscq/vpn/p5;->B:I

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 241
    .line 242
    const-string v3, "service_proxy_enabled"

    .line 243
    .line 244
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_5

    .line 249
    .line 250
    sget v3, Lcom/sgscq/vpn/p5;->D:I

    .line 251
    .line 252
    const-string v0, "\u914d\u7f6e\u65e0\u6548\uff0c\u624b\u52a8\u4ee3\u7406\u672a\u542f\u7528"

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_5
    sget v3, Lcom/sgscq/vpn/p5;->G:I

    .line 256
    .line 257
    const-string v0, "\u672a\u542f\u7528\uff0c\u5f53\u524d\u4f7f\u7528\u9ed8\u8ba4\u8fde\u63a5"

    .line 258
    .line 259
    :goto_3
    invoke-virtual {p0, v0, v3}, Lcom/sgscq/vpn/SettingsActivity;->L(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    :goto_4
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 263
    .line 264
    if-nez v0, :cond_6

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_6
    invoke-static {p0}, Lq/e;->a(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    sget-object v0, Lq/e;->b:Lc/i;

    .line 271
    .line 272
    iput-boolean v1, p0, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 273
    .line 274
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 275
    .line 276
    iget-object v3, v0, Lc/i;->c:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v3, Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v1, v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 284
    .line 285
    iget-boolean v3, v0, Lc/i;->b:Z

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 288
    .line 289
    .line 290
    iput-boolean v2, p0, Lcom/sgscq/vpn/SettingsActivity;->R:Z

    .line 291
    .line 292
    iget-boolean v1, v0, Lc/i;->b:Z

    .line 293
    .line 294
    if-eqz v1, :cond_7

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v2, "\u5df2\u542f\u7528 \u00b7 "

    .line 299
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v0, Lc/i;->c:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 318
    .line 319
    const-string v1, "app_dns_enabled"

    .line 320
    .line 321
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_8

    .line 326
    .line 327
    sget v1, Lcom/sgscq/vpn/p5;->D:I

    .line 328
    .line 329
    const-string v0, "\u914d\u7f6e\u65e0\u6548\uff0cAPP DNS \u672a\u542f\u7528"

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_8
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 333
    .line 334
    const-string v0, "\u672a\u542f\u7528\uff0c\u5f53\u524d\u4f7f\u7528\u7cfb\u7edf DNS"

    .line 335
    .line 336
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->J(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    :goto_6
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->s()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->t()V

    .line 343
    .line 344
    .line 345
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/16 v0, 0x3ea

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p3, "\u6b63\u5728\u5bfc\u5165..."

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string p2, "\u6b63\u5728\u5bfc\u5165\u9ad8\u6e05\u56fe\u8d44\u6e90\uff0c\u8bf7\u7a0d\u5019..."

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/lang/Thread;

    .line 41
    .line 42
    new-instance p3, Lcom/sgscq/vpn/d;

    .line 43
    .line 44
    const/16 v0, 0x11

    .line 45
    .line 46
    invoke-direct {p3, p0, p1, v0}, Lcom/sgscq/vpn/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 32

    .line 1
    move-object/from16 v6, p0

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
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/c7;->d(Landroid/content/Context;)Lcom/sgscq/vpn/c7;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/sgscq/vpn/c7;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "\u672c\u673a\u65f6\u95f4\u5f02\u5e38\uff0c\u8bbe\u7f6e\u754c\u9762\u5df2\u7981\u7528"

    .line 24
    .line 25
    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v0, "sgscq_config_v2"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    const-string v0, "sgscq_player_v5"

    .line 46
    .line 47
    invoke-virtual {v6, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/sgscq/vpn/h;

    .line 51
    .line 52
    invoke-direct {v0, v2, v6}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 56
    .line 57
    new-instance v0, Lcom/sgscq/vpn/cloud/q0;

    .line 58
    .line 59
    invoke-direct {v0, v6}, Lcom/sgscq/vpn/cloud/q0;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 63
    .line 64
    new-instance v0, Lm/e;

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-direct {v0, v3, v6}, Lm/e;-><init>(ILandroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 71
    .line 72
    new-instance v0, Lcom/sgscq/vpn/b0;

    .line 73
    .line 74
    invoke-direct {v0, v6}, Lcom/sgscq/vpn/b0;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    .line 78
    .line 79
    new-instance v0, Lcom/sgscq/vpn/h;

    .line 80
    .line 81
    invoke-direct {v0, v1, v6}, Lcom/sgscq/vpn/h;-><init>(ILandroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    .line 85
    .line 86
    new-instance v0, Landroid/widget/ScrollView;

    .line 87
    .line 88
    invoke-direct {v0, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 97
    .line 98
    const/high16 v3, 0x40000

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 104
    .line 105
    sget v3, Lcom/sgscq/vpn/p5;->x:I

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const/16 v1, 0xe

    .line 123
    .line 124
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    const/16 v4, 0x14

    .line 129
    .line 130
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-virtual {v0, v3, v5, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    sget v1, Lcom/sgscq/vpn/p5;->x:I

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    .line 151
    .line 152
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_1

    .line 157
    .line 158
    const/high16 v0, 0x41300000    # 11.0f

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    .line 162
    .line 163
    :goto_0
    move v8, v0

    .line 164
    const/16 v0, 0xc

    .line 165
    .line 166
    const/16 v1, 0xa

    .line 167
    .line 168
    if-eqz v7, :cond_2

    .line 169
    .line 170
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    :goto_1
    move v9, v3

    .line 180
    const/16 v3, 0x8

    .line 181
    .line 182
    if-eqz v7, :cond_3

    .line 183
    .line 184
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    goto :goto_2

    .line 189
    :cond_3
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    :goto_2
    move v10, v5

    .line 194
    if-eqz v7, :cond_4

    .line 195
    .line 196
    const/high16 v12, 0x41500000    # 13.0f

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    const/high16 v5, 0x41600000    # 14.0f

    .line 200
    .line 201
    move v12, v5

    .line 202
    :goto_3
    const/16 v5, 0x10

    .line 203
    .line 204
    if-eqz v7, :cond_5

    .line 205
    .line 206
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    goto :goto_4

    .line 211
    :cond_5
    const/16 v13, 0x18

    .line 212
    .line 213
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    :goto_4
    if-eqz v7, :cond_6

    .line 218
    .line 219
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    goto :goto_5

    .line 224
    :cond_6
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    :goto_5
    if-eqz v7, :cond_7

    .line 229
    .line 230
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    goto :goto_6

    .line 235
    :cond_7
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    :goto_6
    move v15, v4

    .line 240
    if-eqz v7, :cond_8

    .line 241
    .line 242
    const/high16 v4, 0x41300000    # 11.0f

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_8
    const/high16 v4, 0x41400000    # 12.0f

    .line 246
    .line 247
    :goto_7
    const/16 v11, 0x28

    .line 248
    .line 249
    if-eqz v7, :cond_9

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_9
    const/16 v11, 0x30

    .line 253
    .line 254
    :goto_8
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-eqz v7, :cond_a

    .line 259
    .line 260
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    goto :goto_9

    .line 265
    :cond_a
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    :goto_9
    move/from16 v16, v1

    .line 270
    .line 271
    const/4 v1, 0x6

    .line 272
    if-eqz v7, :cond_b

    .line 273
    .line 274
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    goto :goto_a

    .line 279
    :cond_b
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    :goto_a
    move/from16 v17, v1

    .line 284
    .line 285
    if-eqz v7, :cond_c

    .line 286
    .line 287
    const/high16 v1, 0x41400000    # 12.0f

    .line 288
    .line 289
    move/from16 v18, v1

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_c
    const/high16 v18, 0x41500000    # 13.0f

    .line 293
    .line 294
    :goto_b
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    sget v0, Lcom/sgscq/vpn/p5;->I:I

    .line 299
    .line 300
    sget v5, Lcom/sgscq/vpn/p5;->y:I

    .line 301
    .line 302
    invoke-virtual {v6, v1, v0, v5}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    sget v0, Lcom/sgscq/vpn/p5;->y:I

    .line 307
    .line 308
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    int-to-float v1, v1

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 322
    .line 323
    invoke-static {v0, v1, v3}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->Y(Landroid/app/Activity;)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    new-instance v1, Landroid/widget/LinearLayout;

    .line 332
    .line 333
    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    .line 338
    .line 339
    const/16 v2, 0x10

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 342
    .line 343
    .line 344
    const/16 v2, 0xc

    .line 345
    .line 346
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    move-object/from16 v19, v3

    .line 351
    .line 352
    const/16 v3, 0x8

    .line 353
    .line 354
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 355
    .line 356
    .line 357
    move-result v21

    .line 358
    add-int v0, v21, v0

    .line 359
    .line 360
    move-object/from16 v21, v5

    .line 361
    .line 362
    const/16 v5, 0x10

    .line 363
    .line 364
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 373
    .line 374
    .line 375
    sget v0, Lcom/sgscq/vpn/p5;->A:I

    .line 376
    .line 377
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 378
    .line 379
    .line 380
    new-instance v5, Landroid/widget/Button;

    .line 381
    .line 382
    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 383
    .line 384
    .line 385
    const-string v0, "\u2190 \u8fd4\u56de"

    .line 386
    .line 387
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    const/high16 v0, 0x41600000    # 14.0f

    .line 391
    .line 392
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    .line 394
    .line 395
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 396
    .line 397
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    .line 399
    .line 400
    const/4 v0, 0x0

    .line 401
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 408
    .line 409
    .line 410
    const/16 v2, 0xc

    .line 411
    .line 412
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-virtual {v5, v3, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 421
    .line 422
    .line 423
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 424
    .line 425
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 429
    .line 430
    .line 431
    const/16 v0, 0x8

    .line 432
    .line 433
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    int-to-float v3, v3

    .line 438
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 439
    .line 440
    .line 441
    sget v3, Lcom/sgscq/vpn/p5;->A:I

    .line 442
    .line 443
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 444
    .line 445
    .line 446
    sget v3, Lcom/sgscq/vpn/p5;->A:I

    .line 447
    .line 448
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    int-to-float v0, v0

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 454
    .line 455
    .line 456
    move-result-object v20

    .line 457
    move/from16 v22, v14

    .line 458
    .line 459
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 460
    .line 461
    .line 462
    move-result-object v14

    .line 463
    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    .line 464
    .line 465
    invoke-static {v3, v0, v14}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v5, v2, v0}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 470
    .line 471
    .line 472
    new-instance v0, Lcom/sgscq/vpn/g6;

    .line 473
    .line 474
    const/4 v2, 0x0

    .line 475
    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/g6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    .line 480
    .line 481
    const/4 v0, -0x2

    .line 482
    invoke-static {v0, v11, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    .line 488
    .line 489
    new-instance v2, Landroid/widget/LinearLayout;

    .line 490
    .line 491
    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    .line 493
    .line 494
    const/4 v3, 0x1

    .line 495
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 496
    .line 497
    .line 498
    const/16 v3, 0x10

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 501
    .line 502
    .line 503
    new-instance v3, Landroid/widget/TextView;

    .line 504
    .line 505
    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 506
    .line 507
    .line 508
    const-string v14, "\u8bbe\u7f6e"

    .line 509
    .line 510
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    const/high16 v14, 0x41900000    # 18.0f

    .line 514
    .line 515
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    .line 517
    .line 518
    sget v14, Lcom/sgscq/vpn/p5;->B:I

    .line 519
    .line 520
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    .line 522
    .line 523
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 524
    .line 525
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    .line 527
    .line 528
    const/4 v14, 0x0

    .line 529
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 530
    .line 531
    .line 532
    invoke-static {v0, v0, v14, v14, v14}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 533
    .line 534
    .line 535
    move-result-object v14

    .line 536
    invoke-virtual {v2, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    .line 538
    .line 539
    new-instance v3, Landroid/widget/TextView;

    .line 540
    .line 541
    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 542
    .line 543
    .line 544
    const-string v14, "\u5f53\u524d\u7248\u672c 1.0.1.14067 (23)"

    .line 545
    .line 546
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .line 548
    .line 549
    if-eqz v7, :cond_d

    .line 550
    .line 551
    const/high16 v14, 0x41200000    # 10.0f

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_d
    const/high16 v14, 0x41300000    # 11.0f

    .line 555
    .line 556
    :goto_c
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 557
    .line 558
    .line 559
    sget v14, Lcom/sgscq/vpn/p5;->C:I

    .line 560
    .line 561
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    .line 563
    .line 564
    const/4 v14, 0x1

    .line 565
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 566
    .line 567
    .line 568
    const/4 v14, 0x0

    .line 569
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 570
    .line 571
    .line 572
    move-object/from16 v20, v5

    .line 573
    .line 574
    const/4 v5, 0x2

    .line 575
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    invoke-static {v0, v0, v14, v5, v14}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    .line 585
    .line 586
    const/4 v3, 0x1

    .line 587
    invoke-static {v14, v0, v3, v14, v14}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .line 593
    .line 594
    new-instance v14, Landroid/view/View;

    .line 595
    .line 596
    invoke-direct {v14, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 597
    .line 598
    .line 599
    sget v2, Lcom/sgscq/vpn/p5;->C:I

    .line 600
    .line 601
    invoke-virtual {v14, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 602
    .line 603
    .line 604
    new-instance v5, Landroid/widget/LinearLayout;

    .line 605
    .line 606
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 610
    .line 611
    .line 612
    const-string v2, "\u521d\u59cb\u8eab\u4efd"

    .line 613
    .line 614
    invoke-virtual {v6, v2, v8}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    const/4 v3, -0x1

    .line 619
    move-object/from16 v23, v1

    .line 620
    .line 621
    const/4 v1, 0x0

    .line 622
    invoke-static {v3, v0, v1, v1, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    const/16 v1, 0x1c

    .line 634
    .line 635
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    const/4 v2, 0x2

    .line 640
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    const/4 v3, 0x1

    .line 645
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    invoke-static {v1, v2, v3}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .line 655
    .line 656
    new-instance v3, Landroid/widget/LinearLayout;

    .line 657
    .line 658
    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 659
    .line 660
    .line 661
    const/4 v0, 0x0

    .line 662
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 663
    .line 664
    .line 665
    const/16 v1, 0x10

    .line 666
    .line 667
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 668
    .line 669
    .line 670
    new-instance v1, Landroid/widget/TextView;

    .line 671
    .line 672
    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 673
    .line 674
    .line 675
    const-string v2, "\u59d3\u540d"

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 681
    .line 682
    .line 683
    sget v2, Lcom/sgscq/vpn/p5;->G:I

    .line 684
    .line 685
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    .line 687
    .line 688
    const/4 v2, -0x2

    .line 689
    invoke-static {v2, v2, v0, v0, v0}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .line 695
    .line 696
    const-string v1, "\u8f93\u5165\u59d3\u540d"

    .line 697
    .line 698
    const/4 v2, 0x0

    .line 699
    const/4 v0, 0x2

    .line 700
    move-object/from16 v0, p0

    .line 701
    .line 702
    move-object/from16 v25, v14

    .line 703
    .line 704
    move-object/from16 v14, v23

    .line 705
    .line 706
    move-object/from16 v27, v3

    .line 707
    .line 708
    move-object/from16 v26, v19

    .line 709
    .line 710
    move v3, v9

    .line 711
    move/from16 v28, v4

    .line 712
    .line 713
    move v4, v10

    .line 714
    move-object/from16 v19, v20

    .line 715
    .line 716
    move-object/from16 v14, v21

    .line 717
    .line 718
    move/from16 v20, v15

    .line 719
    .line 720
    move-object v15, v5

    .line 721
    move v5, v12

    .line 722
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->c:Landroid/widget/EditText;

    .line 727
    .line 728
    move-object/from16 v5, v26

    .line 729
    .line 730
    invoke-virtual {v6, v0, v14, v5}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    const/4 v1, -0x2

    .line 735
    const/4 v4, 0x2

    .line 736
    invoke-static {v2, v1, v4, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    move-object/from16 v3, v27

    .line 741
    .line 742
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    .line 744
    .line 745
    new-instance v0, Landroid/view/View;

    .line 746
    .line 747
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 748
    .line 749
    .line 750
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 751
    .line 752
    const/4 v4, 0x6

    .line 753
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Landroid/widget/TextView;

    .line 764
    .line 765
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 766
    .line 767
    .line 768
    const-string v1, "VIP"

    .line 769
    .line 770
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    .line 772
    .line 773
    move/from16 v4, v28

    .line 774
    .line 775
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 776
    .line 777
    .line 778
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 779
    .line 780
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 781
    .line 782
    .line 783
    const/4 v1, -0x2

    .line 784
    invoke-static {v1, v1, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    .line 790
    .line 791
    const-string v1, "0-15"

    .line 792
    .line 793
    const/4 v2, 0x1

    .line 794
    if-eqz v7, :cond_e

    .line 795
    .line 796
    const/4 v0, 0x6

    .line 797
    goto :goto_d

    .line 798
    :cond_e
    const/16 v0, 0x8

    .line 799
    .line 800
    :goto_d
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    move v4, v0

    .line 805
    move-object/from16 v0, p0

    .line 806
    .line 807
    move-object/from16 v29, v3

    .line 808
    .line 809
    move v3, v4

    .line 810
    move v4, v10

    .line 811
    move/from16 v21, v10

    .line 812
    .line 813
    move-object v10, v5

    .line 814
    move v5, v12

    .line 815
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->h:Landroid/widget/EditText;

    .line 820
    .line 821
    const/4 v1, 0x2

    .line 822
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 823
    .line 824
    .line 825
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->h:Landroid/widget/EditText;

    .line 826
    .line 827
    invoke-virtual {v6, v0, v14, v10}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    const/4 v2, 0x0

    .line 832
    const/4 v3, 0x1

    .line 833
    invoke-static {v2, v11, v3, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    move-object/from16 v5, v29

    .line 838
    .line 839
    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    .line 841
    .line 842
    new-instance v0, Landroid/view/View;

    .line 843
    .line 844
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 845
    .line 846
    .line 847
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 848
    .line 849
    const/4 v1, 0x6

    .line 850
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    .line 859
    .line 860
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 861
    .line 862
    const-string v1, "\u4fdd\u5b58"

    .line 863
    .line 864
    invoke-static {v6, v3, v1, v0}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    const/4 v1, -0x2

    .line 869
    invoke-static {v1, v11, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    .line 875
    .line 876
    const/4 v0, -0x1

    .line 877
    invoke-static {v0, v1, v2, v2, v13}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-virtual {v15, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    .line 883
    .line 884
    new-instance v5, Landroid/widget/LinearLayout;

    .line 885
    .line 886
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 890
    .line 891
    .line 892
    const-string v4, "\u521d\u59cb\u8d44\u6e90 (\u65b0\u89d2\u8272\u751f\u6548)"

    .line 893
    .line 894
    invoke-virtual {v6, v4, v8}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    invoke-static {v0, v1, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    const/16 v1, 0x1c

    .line 910
    .line 911
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    const/4 v4, 0x2

    .line 916
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 921
    .line 922
    .line 923
    move-result v3

    .line 924
    invoke-static {v1, v4, v3}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    .line 930
    .line 931
    new-instance v4, Landroid/widget/LinearLayout;

    .line 932
    .line 933
    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 937
    .line 938
    .line 939
    const/16 v0, 0x10

    .line 940
    .line 941
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 942
    .line 943
    .line 944
    const-string v0, "\u94f6\u4e24"

    .line 945
    .line 946
    const-string v1, "0"

    .line 947
    .line 948
    const-string v3, "coin"

    .line 949
    .line 950
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    const-string v2, "\u5143\u5b9d"

    .line 955
    .line 956
    move/from16 v24, v12

    .line 957
    .line 958
    const-string v12, "gold"

    .line 959
    .line 960
    filled-new-array {v2, v1, v12}, [Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    const-string v2, "power"

    .line 965
    .line 966
    move-object/from16 v26, v3

    .line 967
    .line 968
    const-string v3, "\u4f53\u529b"

    .line 969
    .line 970
    move-object/from16 v27, v5

    .line 971
    .line 972
    const-string v5, "150"

    .line 973
    .line 974
    filled-new-array {v3, v5, v2}, [Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    const-string v3, "energy"

    .line 979
    .line 980
    const-string v5, "\u7cbe\u529b"

    .line 981
    .line 982
    move/from16 v28, v9

    .line 983
    .line 984
    const-string v9, "12"

    .line 985
    .line 986
    filled-new-array {v5, v9, v3}, [Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v9

    .line 994
    const/4 v0, 0x0

    .line 995
    move v5, v0

    .line 996
    :goto_e
    const/4 v0, 0x4

    .line 997
    if-ge v5, v0, :cond_19

    .line 998
    .line 999
    aget-object v29, v9, v5

    .line 1000
    .line 1001
    new-instance v0, Landroid/widget/TextView;

    .line 1002
    .line 1003
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1004
    .line 1005
    .line 1006
    const/4 v1, 0x0

    .line 1007
    aget-object v2, v29, v1

    .line 1008
    .line 1009
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    .line 1011
    .line 1012
    const/high16 v2, 0x41400000    # 12.0f

    .line 1013
    .line 1014
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1015
    .line 1016
    .line 1017
    sget v2, Lcom/sgscq/vpn/p5;->G:I

    .line 1018
    .line 1019
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    .line 1021
    .line 1022
    const/4 v2, -0x2

    .line 1023
    invoke-static {v2, v2, v1, v1, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    .line 1029
    .line 1030
    const/4 v0, 0x1

    .line 1031
    aget-object v1, v29, v0

    .line 1032
    .line 1033
    const/4 v2, 0x1

    .line 1034
    move-object/from16 v0, p0

    .line 1035
    .line 1036
    move-object/from16 v30, v26

    .line 1037
    .line 1038
    move/from16 v3, v16

    .line 1039
    .line 1040
    move-object/from16 v31, v4

    .line 1041
    .line 1042
    move/from16 v4, v17

    .line 1043
    .line 1044
    move-object/from16 v26, v9

    .line 1045
    .line 1046
    move-object/from16 v9, v27

    .line 1047
    .line 1048
    move/from16 v27, v8

    .line 1049
    .line 1050
    move v8, v5

    .line 1051
    move/from16 v5, v18

    .line 1052
    .line 1053
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    const/4 v1, 0x0

    .line 1058
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v6, v0, v14, v10}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    if-eqz v7, :cond_f

    .line 1066
    .line 1067
    const/16 v2, 0x20

    .line 1068
    .line 1069
    goto :goto_f

    .line 1070
    :cond_f
    const/16 v2, 0x28

    .line 1071
    .line 1072
    :goto_f
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1073
    .line 1074
    .line 1075
    move-result v2

    .line 1076
    const/4 v3, 0x0

    .line 1077
    const/4 v4, 0x1

    .line 1078
    invoke-static {v3, v2, v4, v3, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    move-object/from16 v3, v31

    .line 1083
    .line 1084
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    .line 1086
    .line 1087
    const/4 v1, 0x3

    .line 1088
    if-ge v8, v1, :cond_10

    .line 1089
    .line 1090
    new-instance v1, Landroid/view/View;

    .line 1091
    .line 1092
    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1093
    .line 1094
    .line 1095
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1096
    .line 1097
    const/16 v4, 0x8

    .line 1098
    .line 1099
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1100
    .line 1101
    .line 1102
    move-result v4

    .line 1103
    const/4 v5, 0x0

    .line 1104
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    .line 1109
    .line 1110
    :cond_10
    const/4 v1, 0x2

    .line 1111
    aget-object v1, v29, v1

    .line 1112
    .line 1113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1117
    .line 1118
    .line 1119
    move-result v2

    .line 1120
    sparse-switch v2, :sswitch_data_0

    .line 1121
    .line 1122
    .line 1123
    goto :goto_10

    .line 1124
    :sswitch_0
    const-string v2, "power"

    .line 1125
    .line 1126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v1

    .line 1130
    if-nez v1, :cond_11

    .line 1131
    .line 1132
    goto :goto_10

    .line 1133
    :cond_11
    const/4 v1, 0x3

    .line 1134
    goto :goto_11

    .line 1135
    :sswitch_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v1

    .line 1139
    if-nez v1, :cond_12

    .line 1140
    .line 1141
    :goto_10
    move-object/from16 v2, v30

    .line 1142
    .line 1143
    goto :goto_12

    .line 1144
    :cond_12
    const/4 v1, 0x2

    .line 1145
    :goto_11
    move-object/from16 v2, v30

    .line 1146
    .line 1147
    goto :goto_13

    .line 1148
    :sswitch_2
    move-object/from16 v2, v30

    .line 1149
    .line 1150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    if-nez v1, :cond_13

    .line 1155
    .line 1156
    goto :goto_12

    .line 1157
    :cond_13
    const/4 v1, 0x1

    .line 1158
    goto :goto_13

    .line 1159
    :sswitch_3
    move-object/from16 v2, v30

    .line 1160
    .line 1161
    const-string v4, "energy"

    .line 1162
    .line 1163
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-nez v1, :cond_14

    .line 1168
    .line 1169
    goto :goto_12

    .line 1170
    :cond_14
    const/4 v1, 0x0

    .line 1171
    goto :goto_13

    .line 1172
    :goto_12
    const/4 v1, -0x1

    .line 1173
    :goto_13
    if-eqz v1, :cond_18

    .line 1174
    .line 1175
    const/4 v4, 0x1

    .line 1176
    if-eq v1, v4, :cond_17

    .line 1177
    .line 1178
    const/4 v4, 0x2

    .line 1179
    if-eq v1, v4, :cond_16

    .line 1180
    .line 1181
    const/4 v4, 0x3

    .line 1182
    if-eq v1, v4, :cond_15

    .line 1183
    .line 1184
    goto :goto_14

    .line 1185
    :cond_15
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->f:Landroid/widget/EditText;

    .line 1186
    .line 1187
    goto :goto_14

    .line 1188
    :cond_16
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->e:Landroid/widget/EditText;

    .line 1189
    .line 1190
    goto :goto_14

    .line 1191
    :cond_17
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->d:Landroid/widget/EditText;

    .line 1192
    .line 1193
    goto :goto_14

    .line 1194
    :cond_18
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->g:Landroid/widget/EditText;

    .line 1195
    .line 1196
    :goto_14
    add-int/lit8 v5, v8, 0x1

    .line 1197
    .line 1198
    move-object v4, v3

    .line 1199
    move/from16 v8, v27

    .line 1200
    .line 1201
    move-object/from16 v27, v9

    .line 1202
    .line 1203
    move-object/from16 v9, v26

    .line 1204
    .line 1205
    move-object/from16 v26, v2

    .line 1206
    .line 1207
    goto/16 :goto_e

    .line 1208
    .line 1209
    :cond_19
    move-object v3, v4

    .line 1210
    move-object/from16 v9, v27

    .line 1211
    .line 1212
    move/from16 v27, v8

    .line 1213
    .line 1214
    const/16 v0, 0xc

    .line 1215
    .line 1216
    const/4 v8, 0x3

    .line 1217
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    const/4 v1, -0x2

    .line 1222
    const/4 v2, -0x1

    .line 1223
    const/4 v4, 0x0

    .line 1224
    invoke-static {v2, v1, v4, v4, v0}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-virtual {v9, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    .line 1230
    .line 1231
    new-instance v0, Landroid/widget/Button;

    .line 1232
    .line 1233
    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1234
    .line 1235
    .line 1236
    const-string v1, "\u4fdd\u5b58\u8d44\u6e90\u8bbe\u7f6e"

    .line 1237
    .line 1238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    .line 1240
    .line 1241
    const/high16 v1, 0x41600000    # 14.0f

    .line 1242
    .line 1243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1244
    .line 1245
    .line 1246
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 1247
    .line 1248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1258
    .line 1259
    .line 1260
    const/16 v1, 0xc

    .line 1261
    .line 1262
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v1

    .line 1270
    invoke-virtual {v0, v2, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1271
    .line 1272
    .line 1273
    const/16 v1, 0x8

    .line 1274
    .line 1275
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1276
    .line 1277
    .line 1278
    move-result v2

    .line 1279
    sget v3, Lcom/sgscq/vpn/p5;->C:I

    .line 1280
    .line 1281
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 1282
    .line 1283
    invoke-virtual {v6, v2, v3, v4}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    sget v3, Lcom/sgscq/vpn/p5;->x:I

    .line 1288
    .line 1289
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1290
    .line 1291
    .line 1292
    move-result v1

    .line 1293
    int-to-float v1, v1

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v4

    .line 1298
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 1303
    .line 1304
    invoke-static {v3, v1, v4}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v1

    .line 1308
    invoke-static {v0, v2, v1}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 1309
    .line 1310
    .line 1311
    new-instance v1, Lcom/sgscq/vpn/i1;

    .line 1312
    .line 1313
    const/4 v2, 0x2

    .line 1314
    invoke-direct {v1, v6, v15, v2}, Lcom/sgscq/vpn/i1;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;I)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    .line 1319
    .line 1320
    const/4 v1, -0x1

    .line 1321
    const/4 v2, 0x0

    .line 1322
    invoke-static {v1, v11, v2, v2, v13}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    invoke-virtual {v9, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    .line 1328
    .line 1329
    new-instance v9, Landroid/widget/LinearLayout;

    .line 1330
    .line 1331
    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1332
    .line 1333
    .line 1334
    const/4 v0, 0x1

    .line 1335
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1336
    .line 1337
    .line 1338
    const-string v3, "\u670d\u52a1\u4ee3\u7406"

    .line 1339
    .line 1340
    move/from16 v10, v27

    .line 1341
    .line 1342
    invoke-virtual {v6, v3, v10}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    const/4 v4, -0x2

    .line 1347
    invoke-static {v1, v4, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v1

    .line 1351
    invoke-virtual {v9, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v1

    .line 1358
    const/16 v3, 0x1c

    .line 1359
    .line 1360
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1361
    .line 1362
    .line 1363
    move-result v3

    .line 1364
    const/4 v4, 0x2

    .line 1365
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1366
    .line 1367
    .line 1368
    move-result v4

    .line 1369
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1370
    .line 1371
    .line 1372
    move-result v0

    .line 1373
    invoke-static {v3, v4, v0}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    invoke-virtual {v9, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    .line 1379
    .line 1380
    new-instance v0, Landroid/widget/LinearLayout;

    .line 1381
    .line 1382
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1386
    .line 1387
    .line 1388
    const/16 v1, 0x10

    .line 1389
    .line 1390
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v1, Landroid/widget/TextView;

    .line 1394
    .line 1395
    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1396
    .line 1397
    .line 1398
    const-string v2, "\u4f7f\u7528\u624b\u52a8\u4ee3\u7406\uff08\u4ec5\u81ea\u6709\u5728\u7ebf\u670d\u52a1\uff09"

    .line 1399
    .line 1400
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v2

    .line 1407
    if-eqz v2, :cond_1a

    .line 1408
    .line 1409
    const/high16 v2, 0x41400000    # 12.0f

    .line 1410
    .line 1411
    goto :goto_15

    .line 1412
    :cond_1a
    const/high16 v2, 0x41500000    # 13.0f

    .line 1413
    .line 1414
    :goto_15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1415
    .line 1416
    .line 1417
    sget v2, Lcom/sgscq/vpn/p5;->F:I

    .line 1418
    .line 1419
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1420
    .line 1421
    .line 1422
    const/4 v2, -0x2

    .line 1423
    const/4 v3, 0x0

    .line 1424
    const/4 v4, 0x1

    .line 1425
    invoke-static {v3, v2, v4, v3, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v4

    .line 1429
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    .line 1431
    .line 1432
    new-instance v1, Landroid/widget/Switch;

    .line 1433
    .line 1434
    invoke-direct {v1, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1435
    .line 1436
    .line 1437
    iput-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 1438
    .line 1439
    const-string v4, "\u4f7f\u7528\u624b\u52a8\u670d\u52a1\u4ee3\u7406"

    .line 1440
    .line 1441
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1442
    .line 1443
    .line 1444
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 1445
    .line 1446
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1447
    .line 1448
    .line 1449
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 1450
    .line 1451
    invoke-static {v2, v11, v3, v3, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1456
    .line 1457
    .line 1458
    const/4 v1, 0x6

    .line 1459
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1460
    .line 1461
    .line 1462
    move-result v4

    .line 1463
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1464
    .line 1465
    .line 1466
    move-result v1

    .line 1467
    const/4 v5, -0x1

    .line 1468
    invoke-static {v5, v2, v3, v4, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v1

    .line 1472
    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v0, Landroid/widget/RadioGroup;

    .line 1476
    .line 1477
    invoke-direct {v0, v6}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1481
    .line 1482
    .line 1483
    const/16 v1, 0x10

    .line 1484
    .line 1485
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1486
    .line 1487
    .line 1488
    const-string v1, "HTTP"

    .line 1489
    .line 1490
    invoke-virtual {v6, v1}, Lcom/sgscq/vpn/SettingsActivity;->q(Ljava/lang/String;)Landroid/widget/RadioButton;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    iput-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->F:Landroid/widget/RadioButton;

    .line 1495
    .line 1496
    const-string v1, "HTTPS"

    .line 1497
    .line 1498
    invoke-virtual {v6, v1}, Lcom/sgscq/vpn/SettingsActivity;->q(Ljava/lang/String;)Landroid/widget/RadioButton;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v1

    .line 1502
    iput-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 1503
    .line 1504
    const-string v1, "SOCKS5"

    .line 1505
    .line 1506
    invoke-virtual {v6, v1}, Lcom/sgscq/vpn/SettingsActivity;->q(Ljava/lang/String;)Landroid/widget/RadioButton;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v1

    .line 1510
    iput-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 1511
    .line 1512
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->F:Landroid/widget/RadioButton;

    .line 1513
    .line 1514
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 1515
    .line 1516
    .line 1517
    move-result v2

    .line 1518
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1519
    .line 1520
    .line 1521
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 1522
    .line 1523
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 1524
    .line 1525
    .line 1526
    move-result v2

    .line 1527
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1528
    .line 1529
    .line 1530
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 1531
    .line 1532
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 1533
    .line 1534
    .line 1535
    move-result v2

    .line 1536
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1537
    .line 1538
    .line 1539
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->F:Landroid/widget/RadioButton;

    .line 1540
    .line 1541
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    .line 1542
    .line 1543
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1544
    .line 1545
    const/4 v4, 0x0

    .line 1546
    invoke-direct {v2, v4, v11, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    .line 1551
    .line 1552
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->G:Landroid/widget/RadioButton;

    .line 1553
    .line 1554
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    .line 1555
    .line 1556
    invoke-direct {v2, v4, v11, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1560
    .line 1561
    .line 1562
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->H:Landroid/widget/RadioButton;

    .line 1563
    .line 1564
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    .line 1565
    .line 1566
    invoke-direct {v2, v4, v11, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    .line 1571
    .line 1572
    const/16 v1, 0x8

    .line 1573
    .line 1574
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1575
    .line 1576
    .line 1577
    move-result v2

    .line 1578
    const/4 v3, -0x2

    .line 1579
    invoke-static {v5, v3, v4, v4, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    sget v2, Lcom/sgscq/vpn/p5;->I:I

    .line 1591
    .line 1592
    sget v3, Lcom/sgscq/vpn/p5;->y:I

    .line 1593
    .line 1594
    invoke-virtual {v6, v0, v2, v3}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v12

    .line 1598
    sget v0, Lcom/sgscq/vpn/p5;->y:I

    .line 1599
    .line 1600
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1601
    .line 1602
    .line 1603
    move-result v1

    .line 1604
    int-to-float v1, v1

    .line 1605
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v2

    .line 1609
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1614
    .line 1615
    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v14

    .line 1619
    new-instance v15, Landroid/widget/LinearLayout;

    .line 1620
    .line 1621
    invoke-direct {v15, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1622
    .line 1623
    .line 1624
    const/4 v0, 0x0

    .line 1625
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1626
    .line 1627
    .line 1628
    const/16 v0, 0x10

    .line 1629
    .line 1630
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1631
    .line 1632
    .line 1633
    new-instance v0, Landroid/widget/TextView;

    .line 1634
    .line 1635
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1636
    .line 1637
    .line 1638
    const-string v1, "\u5730\u5740"

    .line 1639
    .line 1640
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    .line 1642
    .line 1643
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v1

    .line 1647
    if-eqz v1, :cond_1b

    .line 1648
    .line 1649
    const/high16 v1, 0x41300000    # 11.0f

    .line 1650
    .line 1651
    goto :goto_16

    .line 1652
    :cond_1b
    const/high16 v1, 0x41400000    # 12.0f

    .line 1653
    .line 1654
    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1655
    .line 1656
    .line 1657
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 1658
    .line 1659
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1660
    .line 1661
    .line 1662
    const/4 v1, -0x2

    .line 1663
    const/4 v2, 0x0

    .line 1664
    invoke-static {v1, v1, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v1

    .line 1668
    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    .line 1670
    .line 1671
    const-string v1, "\u4f8b\u5982 proxy.example.com"

    .line 1672
    .line 1673
    move-object/from16 v0, p0

    .line 1674
    .line 1675
    move/from16 v3, v28

    .line 1676
    .line 1677
    move/from16 v4, v21

    .line 1678
    .line 1679
    move/from16 v5, v24

    .line 1680
    .line 1681
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 1686
    .line 1687
    const/4 v1, 0x1

    .line 1688
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1689
    .line 1690
    .line 1691
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 1692
    .line 1693
    const/4 v1, 0x5

    .line 1694
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1695
    .line 1696
    .line 1697
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->I:Landroid/widget/EditText;

    .line 1698
    .line 1699
    invoke-virtual {v6, v0, v12, v14}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    const/4 v1, 0x0

    .line 1704
    invoke-static {v1, v11, v8, v1, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v2

    .line 1708
    invoke-virtual {v15, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    .line 1710
    .line 1711
    new-instance v0, Landroid/view/View;

    .line 1712
    .line 1713
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1714
    .line 1715
    .line 1716
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1717
    .line 1718
    const/16 v3, 0x8

    .line 1719
    .line 1720
    invoke-static {v3, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1721
    .line 1722
    .line 1723
    move-result v3

    .line 1724
    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v15, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1728
    .line 1729
    .line 1730
    new-instance v0, Landroid/widget/TextView;

    .line 1731
    .line 1732
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1733
    .line 1734
    .line 1735
    const-string v1, "\u7aef\u53e3"

    .line 1736
    .line 1737
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    .line 1739
    .line 1740
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v1

    .line 1744
    if-eqz v1, :cond_1c

    .line 1745
    .line 1746
    const/high16 v1, 0x41300000    # 11.0f

    .line 1747
    .line 1748
    goto :goto_17

    .line 1749
    :cond_1c
    const/high16 v1, 0x41400000    # 12.0f

    .line 1750
    .line 1751
    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1752
    .line 1753
    .line 1754
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 1755
    .line 1756
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1757
    .line 1758
    .line 1759
    const/4 v1, -0x2

    .line 1760
    const/4 v2, 0x0

    .line 1761
    invoke-static {v1, v1, v2, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1762
    .line 1763
    .line 1764
    move-result-object v1

    .line 1765
    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1766
    .line 1767
    .line 1768
    const-string v1, "8080"

    .line 1769
    .line 1770
    const/4 v2, 0x1

    .line 1771
    move-object/from16 v0, p0

    .line 1772
    .line 1773
    move/from16 v3, v28

    .line 1774
    .line 1775
    move/from16 v4, v21

    .line 1776
    .line 1777
    move/from16 v5, v24

    .line 1778
    .line 1779
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/SettingsActivity;->p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 1784
    .line 1785
    const/4 v1, 0x2

    .line 1786
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1787
    .line 1788
    .line 1789
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 1790
    .line 1791
    const/4 v1, 0x1

    .line 1792
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1793
    .line 1794
    .line 1795
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 1796
    .line 1797
    const/4 v2, 0x6

    .line 1798
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1799
    .line 1800
    .line 1801
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->J:Landroid/widget/EditText;

    .line 1802
    .line 1803
    invoke-virtual {v6, v0, v12, v14}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v0

    .line 1807
    const/4 v2, 0x0

    .line 1808
    invoke-static {v2, v11, v1, v2, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v1

    .line 1812
    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    .line 1814
    .line 1815
    const/16 v0, 0xa

    .line 1816
    .line 1817
    invoke-static {v0, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1818
    .line 1819
    .line 1820
    move-result v0

    .line 1821
    const/4 v1, -0x2

    .line 1822
    const/4 v3, -0x1

    .line 1823
    invoke-static {v3, v1, v2, v2, v0}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    invoke-virtual {v9, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    .line 1829
    .line 1830
    new-instance v0, Landroid/widget/LinearLayout;

    .line 1831
    .line 1832
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1836
    .line 1837
    .line 1838
    const/16 v1, 0x10

    .line 1839
    .line 1840
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1841
    .line 1842
    .line 1843
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 1844
    .line 1845
    const/4 v2, 0x4

    .line 1846
    const-string v3, "\u4fdd\u5b58\u5e76\u542f\u7528"

    .line 1847
    .line 1848
    invoke-static {v6, v2, v3, v1}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v1

    .line 1852
    sget v2, Lcom/sgscq/vpn/p5;->C:I

    .line 1853
    .line 1854
    const/4 v4, 0x5

    .line 1855
    const-string v5, "\u6d4b\u8bd5\u8fde\u63a5"

    .line 1856
    .line 1857
    invoke-static {v6, v4, v5, v2}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v2

    .line 1861
    iput-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->L:Landroid/widget/Button;

    .line 1862
    .line 1863
    sget v2, Lcom/sgscq/vpn/p5;->D:I

    .line 1864
    .line 1865
    const/4 v4, 0x6

    .line 1866
    const-string v5, "\u6062\u590d\u9ed8\u8ba4"

    .line 1867
    .line 1868
    invoke-static {v6, v4, v5, v2}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v2

    .line 1872
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1873
    .line 1874
    const/4 v8, 0x0

    .line 1875
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1876
    .line 1877
    invoke-direct {v4, v8, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    .line 1882
    .line 1883
    new-instance v1, Landroid/view/View;

    .line 1884
    .line 1885
    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1886
    .line 1887
    .line 1888
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1889
    .line 1890
    const/16 v15, 0x8

    .line 1891
    .line 1892
    move/from16 v16, v7

    .line 1893
    .line 1894
    invoke-static {v15, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1895
    .line 1896
    .line 1897
    move-result v7

    .line 1898
    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1899
    .line 1900
    .line 1901
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1902
    .line 1903
    .line 1904
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->L:Landroid/widget/Button;

    .line 1905
    .line 1906
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1907
    .line 1908
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1909
    .line 1910
    invoke-direct {v4, v8, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1914
    .line 1915
    .line 1916
    new-instance v1, Landroid/view/View;

    .line 1917
    .line 1918
    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1919
    .line 1920
    .line 1921
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1922
    .line 1923
    invoke-static {v15, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1924
    .line 1925
    .line 1926
    move-result v7

    .line 1927
    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1931
    .line 1932
    .line 1933
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1934
    .line 1935
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1936
    .line 1937
    invoke-direct {v1, v8, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-static {v15, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 1944
    .line 1945
    .line 1946
    move-result v1

    .line 1947
    const/4 v2, -0x2

    .line 1948
    const/4 v4, -0x1

    .line 1949
    invoke-static {v4, v2, v8, v8, v1}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v1

    .line 1953
    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1954
    .line 1955
    .line 1956
    new-instance v0, Landroid/widget/TextView;

    .line 1957
    .line 1958
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1959
    .line 1960
    .line 1961
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    .line 1962
    .line 1963
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v1

    .line 1967
    if-eqz v1, :cond_1d

    .line 1968
    .line 1969
    const/high16 v1, 0x41300000    # 11.0f

    .line 1970
    .line 1971
    goto :goto_18

    .line 1972
    :cond_1d
    const/high16 v1, 0x41400000    # 12.0f

    .line 1973
    .line 1974
    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1975
    .line 1976
    .line 1977
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    .line 1978
    .line 1979
    sget v1, Lcom/sgscq/vpn/p5;->G:I

    .line 1980
    .line 1981
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1982
    .line 1983
    .line 1984
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    .line 1985
    .line 1986
    const/16 v1, 0x11

    .line 1987
    .line 1988
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1989
    .line 1990
    .line 1991
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    .line 1992
    .line 1993
    const-string v2, "\u672a\u542f\u7528\uff0c\u5f53\u524d\u4f7f\u7528\u9ed8\u8ba4\u8fde\u63a5"

    .line 1994
    .line 1995
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1996
    .line 1997
    .line 1998
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->K:Landroid/widget/TextView;

    .line 1999
    .line 2000
    const/4 v2, 0x6

    .line 2001
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2002
    .line 2003
    .line 2004
    move-result v2

    .line 2005
    const/4 v4, -0x2

    .line 2006
    const/4 v7, -0x1

    .line 2007
    const/4 v8, 0x0

    .line 2008
    invoke-static {v7, v4, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v2

    .line 2012
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2013
    .line 2014
    .line 2015
    new-instance v0, Landroid/widget/TextView;

    .line 2016
    .line 2017
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2018
    .line 2019
    .line 2020
    const-string v2, "\u4ec5\u7528\u4e8e\u4e91\u670d\u52a1\u3001\u7231\u53d1\u7535\u767b\u5f55\u548c\u9650\u65f6\u6570\u636e\uff1b\u4e0d\u5f71\u54cd\u6e38\u620f\u672c\u5730 VPN \u6d41\u91cf\u3002\u624b\u52a8\u4ee3\u7406\u5931\u8d25\u65f6\u4e0d\u4f1a\u81ea\u52a8\u7ed5\u8fc7\u3002\u6682\u4e0d\u652f\u6301\u4ee3\u7406\u8d26\u53f7\u5bc6\u7801\u3002"

    .line 2021
    .line 2022
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2023
    .line 2024
    .line 2025
    const/high16 v2, 0x41300000    # 11.0f

    .line 2026
    .line 2027
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2028
    .line 2029
    .line 2030
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 2031
    .line 2032
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2036
    .line 2037
    .line 2038
    const/16 v2, 0x12

    .line 2039
    .line 2040
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2041
    .line 2042
    .line 2043
    move-result v2

    .line 2044
    invoke-static {v7, v4, v8, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v2

    .line 2048
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2049
    .line 2050
    .line 2051
    const-string v0, "APP \u4e13\u7528 DNS"

    .line 2052
    .line 2053
    invoke-virtual {v6, v0, v10}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v0

    .line 2057
    invoke-static {v7, v4, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v2

    .line 2061
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v0

    .line 2068
    const/16 v2, 0x1c

    .line 2069
    .line 2070
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2071
    .line 2072
    .line 2073
    move-result v2

    .line 2074
    const/4 v4, 0x2

    .line 2075
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2076
    .line 2077
    .line 2078
    move-result v4

    .line 2079
    const/4 v7, 0x1

    .line 2080
    invoke-static {v7, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2081
    .line 2082
    .line 2083
    move-result v7

    .line 2084
    invoke-static {v2, v4, v7}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v2

    .line 2088
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2089
    .line 2090
    .line 2091
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2092
    .line 2093
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2094
    .line 2095
    .line 2096
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2097
    .line 2098
    .line 2099
    const/16 v2, 0x10

    .line 2100
    .line 2101
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2102
    .line 2103
    .line 2104
    new-instance v2, Landroid/widget/TextView;

    .line 2105
    .line 2106
    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2107
    .line 2108
    .line 2109
    const-string v4, "\u4f7f\u7528 APP \u4e13\u7528 DNS\uff08\u4ec5\u81ea\u6709\u5728\u7ebf\u670d\u52a1\uff09"

    .line 2110
    .line 2111
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2112
    .line 2113
    .line 2114
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 2115
    .line 2116
    .line 2117
    move-result v4

    .line 2118
    if-eqz v4, :cond_1e

    .line 2119
    .line 2120
    const/high16 v4, 0x41400000    # 12.0f

    .line 2121
    .line 2122
    goto :goto_19

    .line 2123
    :cond_1e
    const/high16 v4, 0x41500000    # 13.0f

    .line 2124
    .line 2125
    :goto_19
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2126
    .line 2127
    .line 2128
    sget v4, Lcom/sgscq/vpn/p5;->F:I

    .line 2129
    .line 2130
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2131
    .line 2132
    .line 2133
    const/4 v4, -0x2

    .line 2134
    const/4 v7, 0x0

    .line 2135
    const/4 v8, 0x1

    .line 2136
    invoke-static {v7, v4, v8, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v8

    .line 2140
    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2141
    .line 2142
    .line 2143
    new-instance v2, Landroid/widget/Switch;

    .line 2144
    .line 2145
    invoke-direct {v2, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 2146
    .line 2147
    .line 2148
    iput-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 2149
    .line 2150
    const-string v8, "\u4f7f\u7528 APP \u4e13\u7528 DNS"

    .line 2151
    .line 2152
    invoke-virtual {v2, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2153
    .line 2154
    .line 2155
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 2156
    .line 2157
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2158
    .line 2159
    .line 2160
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 2161
    .line 2162
    invoke-static {v4, v11, v7, v7, v7}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v8

    .line 2166
    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2167
    .line 2168
    .line 2169
    const/4 v2, 0x6

    .line 2170
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2171
    .line 2172
    .line 2173
    move-result v8

    .line 2174
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2175
    .line 2176
    .line 2177
    move-result v2

    .line 2178
    const/4 v15, -0x1

    .line 2179
    invoke-static {v15, v4, v7, v8, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v2

    .line 2183
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2184
    .line 2185
    .line 2186
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    .line 2187
    .line 2188
    invoke-direct {v0, v6}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2189
    .line 2190
    .line 2191
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2192
    .line 2193
    move/from16 v2, v24

    .line 2194
    .line 2195
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2196
    .line 2197
    .line 2198
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2199
    .line 2200
    sget v2, Lcom/sgscq/vpn/p5;->F:I

    .line 2201
    .line 2202
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2203
    .line 2204
    .line 2205
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2206
    .line 2207
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 2208
    .line 2209
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2210
    .line 2211
    .line 2212
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2213
    .line 2214
    const-string v2, "\u9009\u62e9\u6216\u8f93\u5165 DNS IP"

    .line 2215
    .line 2216
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2217
    .line 2218
    .line 2219
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2220
    .line 2221
    move/from16 v4, v21

    .line 2222
    .line 2223
    move/from16 v2, v28

    .line 2224
    .line 2225
    invoke-virtual {v0, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2226
    .line 2227
    .line 2228
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2229
    .line 2230
    const/4 v2, 0x1

    .line 2231
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2232
    .line 2233
    .line 2234
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2235
    .line 2236
    const/4 v4, 0x6

    .line 2237
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2238
    .line 2239
    .line 2240
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2241
    .line 2242
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 2243
    .line 2244
    .line 2245
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2246
    .line 2247
    const/4 v2, 0x0

    .line 2248
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2249
    .line 2250
    .line 2251
    const-string v0, "114DNS \u00b7 114.114.114.114"

    .line 2252
    .line 2253
    const-string v2, "\u963f\u91cc DNS \u00b7 223.5.5.5"

    .line 2254
    .line 2255
    const-string v4, "\u767e\u5ea6 DNS \u00b7 180.76.76.76"

    .line 2256
    .line 2257
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v0

    .line 2261
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2262
    .line 2263
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 2264
    .line 2265
    const v7, 0x109000a

    .line 2266
    .line 2267
    .line 2268
    invoke-direct {v4, v6, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2269
    .line 2270
    .line 2271
    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2272
    .line 2273
    .line 2274
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2275
    .line 2276
    const/4 v4, 0x0

    .line 2277
    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 2278
    .line 2279
    .line 2280
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2281
    .line 2282
    new-instance v4, Lcom/sgscq/vpn/g6;

    .line 2283
    .line 2284
    const/4 v7, 0x7

    .line 2285
    invoke-direct {v4, v6, v7}, Lcom/sgscq/vpn/g6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 2286
    .line 2287
    .line 2288
    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2289
    .line 2290
    .line 2291
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2292
    .line 2293
    new-instance v4, Lcom/sgscq/vpn/i6;

    .line 2294
    .line 2295
    invoke-direct {v4, v6, v0}, Lcom/sgscq/vpn/i6;-><init>(Lcom/sgscq/vpn/SettingsActivity;[Ljava/lang/String;)V

    .line 2296
    .line 2297
    .line 2298
    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2299
    .line 2300
    .line 2301
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->O:Landroid/widget/AutoCompleteTextView;

    .line 2302
    .line 2303
    invoke-virtual {v6, v0, v12, v14}, Lcom/sgscq/vpn/SettingsActivity;->Q(Landroid/widget/EditText;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)Landroid/widget/LinearLayout;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v0

    .line 2307
    const/16 v2, 0xa

    .line 2308
    .line 2309
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2310
    .line 2311
    .line 2312
    move-result v2

    .line 2313
    const/4 v4, -0x1

    .line 2314
    const/4 v7, 0x0

    .line 2315
    invoke-static {v4, v11, v7, v7, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v2

    .line 2319
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2320
    .line 2321
    .line 2322
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2323
    .line 2324
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2325
    .line 2326
    .line 2327
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2328
    .line 2329
    .line 2330
    const/16 v2, 0x10

    .line 2331
    .line 2332
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2333
    .line 2334
    .line 2335
    sget v2, Lcom/sgscq/vpn/p5;->B:I

    .line 2336
    .line 2337
    const/16 v4, 0x8

    .line 2338
    .line 2339
    invoke-static {v6, v4, v3, v2}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v2

    .line 2343
    sget v3, Lcom/sgscq/vpn/p5;->C:I

    .line 2344
    .line 2345
    const/16 v4, 0x9

    .line 2346
    .line 2347
    const-string v7, "\u6d4b\u8bd5 DNS"

    .line 2348
    .line 2349
    invoke-static {v6, v4, v7, v3}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v3

    .line 2353
    iput-object v3, v6, Lcom/sgscq/vpn/SettingsActivity;->Q:Landroid/widget/Button;

    .line 2354
    .line 2355
    sget v3, Lcom/sgscq/vpn/p5;->D:I

    .line 2356
    .line 2357
    const/16 v4, 0xa

    .line 2358
    .line 2359
    invoke-static {v6, v4, v5, v3}, Lc/a;->h(Lcom/sgscq/vpn/SettingsActivity;ILjava/lang/String;I)Landroid/widget/Button;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v3

    .line 2363
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2364
    .line 2365
    const/high16 v5, 0x3f800000    # 1.0f

    .line 2366
    .line 2367
    const/4 v7, 0x0

    .line 2368
    invoke-direct {v4, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2369
    .line 2370
    .line 2371
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2372
    .line 2373
    .line 2374
    new-instance v2, Landroid/view/View;

    .line 2375
    .line 2376
    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2377
    .line 2378
    .line 2379
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2380
    .line 2381
    const/16 v8, 0x8

    .line 2382
    .line 2383
    invoke-static {v8, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2384
    .line 2385
    .line 2386
    move-result v12

    .line 2387
    invoke-direct {v4, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2388
    .line 2389
    .line 2390
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2391
    .line 2392
    .line 2393
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->Q:Landroid/widget/Button;

    .line 2394
    .line 2395
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2396
    .line 2397
    invoke-direct {v4, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2398
    .line 2399
    .line 2400
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2401
    .line 2402
    .line 2403
    new-instance v2, Landroid/view/View;

    .line 2404
    .line 2405
    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2406
    .line 2407
    .line 2408
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2409
    .line 2410
    invoke-static {v8, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2411
    .line 2412
    .line 2413
    move-result v12

    .line 2414
    invoke-direct {v4, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2415
    .line 2416
    .line 2417
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2418
    .line 2419
    .line 2420
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2421
    .line 2422
    invoke-direct {v2, v7, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2423
    .line 2424
    .line 2425
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2426
    .line 2427
    .line 2428
    invoke-static {v8, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2429
    .line 2430
    .line 2431
    move-result v2

    .line 2432
    const/4 v3, -0x2

    .line 2433
    const/4 v4, -0x1

    .line 2434
    invoke-static {v4, v3, v7, v7, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v2

    .line 2438
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2439
    .line 2440
    .line 2441
    new-instance v0, Landroid/widget/TextView;

    .line 2442
    .line 2443
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2444
    .line 2445
    .line 2446
    iput-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    .line 2447
    .line 2448
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 2449
    .line 2450
    .line 2451
    move-result v2

    .line 2452
    if-eqz v2, :cond_1f

    .line 2453
    .line 2454
    const/high16 v2, 0x41300000    # 11.0f

    .line 2455
    .line 2456
    goto :goto_1a

    .line 2457
    :cond_1f
    const/high16 v2, 0x41400000    # 12.0f

    .line 2458
    .line 2459
    :goto_1a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2460
    .line 2461
    .line 2462
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    .line 2463
    .line 2464
    sget v2, Lcom/sgscq/vpn/p5;->G:I

    .line 2465
    .line 2466
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2467
    .line 2468
    .line 2469
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    .line 2470
    .line 2471
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2472
    .line 2473
    .line 2474
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    .line 2475
    .line 2476
    const-string v2, "\u672a\u542f\u7528\uff0c\u5f53\u524d\u4f7f\u7528\u7cfb\u7edf DNS"

    .line 2477
    .line 2478
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    .line 2480
    .line 2481
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->P:Landroid/widget/TextView;

    .line 2482
    .line 2483
    const/4 v2, 0x6

    .line 2484
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2485
    .line 2486
    .line 2487
    move-result v2

    .line 2488
    const/4 v3, -0x2

    .line 2489
    const/4 v4, -0x1

    .line 2490
    const/4 v5, 0x0

    .line 2491
    invoke-static {v4, v3, v5, v5, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v2

    .line 2495
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2496
    .line 2497
    .line 2498
    new-instance v0, Landroid/widget/TextView;

    .line 2499
    .line 2500
    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2501
    .line 2502
    .line 2503
    const-string v2, "\u4ec5\u89e3\u6790 *.sgscq.com \u548c *.ifdian.net\uff1b\u4e0d\u4fee\u6539\u7cfb\u7edf DNS\uff0c\u4e5f\u4e0d\u5f71\u54cd\u5176\u5b83 APP \u6216\u6e38\u620f VPN \u6d41\u91cf\u3002\u624b\u52a8\u4ee3\u7406\u542f\u7528\u65f6\u4f18\u5148\u4f7f\u7528\u4ee3\u7406\u3002"

    .line 2504
    .line 2505
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2506
    .line 2507
    .line 2508
    const/high16 v2, 0x41300000    # 11.0f

    .line 2509
    .line 2510
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2511
    .line 2512
    .line 2513
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 2514
    .line 2515
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2516
    .line 2517
    .line 2518
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2519
    .line 2520
    .line 2521
    invoke-static {v4, v3, v5, v5, v13}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2522
    .line 2523
    .line 2524
    move-result-object v1

    .line 2525
    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2526
    .line 2527
    .line 2528
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->E:Landroid/widget/Switch;

    .line 2529
    .line 2530
    new-instance v1, Lcom/sgscq/vpn/j6;

    .line 2531
    .line 2532
    invoke-direct {v1, v6, v5}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2536
    .line 2537
    .line 2538
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->N:Landroid/widget/Switch;

    .line 2539
    .line 2540
    new-instance v1, Lcom/sgscq/vpn/j6;

    .line 2541
    .line 2542
    const/4 v2, 0x1

    .line 2543
    invoke-direct {v1, v6, v2}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 2544
    .line 2545
    .line 2546
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->d(FII)Landroid/widget/LinearLayout;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v0

    .line 2553
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->e(FII)Landroid/widget/LinearLayout;

    .line 2554
    .line 2555
    .line 2556
    move-result-object v1

    .line 2557
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->f(FII)Landroid/widget/LinearLayout;

    .line 2558
    .line 2559
    .line 2560
    move-result-object v3

    .line 2561
    new-instance v4, Landroid/widget/LinearLayout;

    .line 2562
    .line 2563
    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2567
    .line 2568
    .line 2569
    const-string v5, "\u670d\u52a1\u5668\u8bbe\u7f6e"

    .line 2570
    .line 2571
    invoke-virtual {v6, v5, v10}, Lcom/sgscq/vpn/SettingsActivity;->G(Ljava/lang/String;F)Landroid/widget/TextView;

    .line 2572
    .line 2573
    .line 2574
    move-result-object v5

    .line 2575
    const/4 v7, -0x2

    .line 2576
    const/4 v8, -0x1

    .line 2577
    const/4 v12, 0x0

    .line 2578
    invoke-static {v8, v7, v12, v12, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v7

    .line 2582
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->a()Landroid/view/View;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v5

    .line 2589
    const/16 v7, 0x1c

    .line 2590
    .line 2591
    invoke-static {v7, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2592
    .line 2593
    .line 2594
    move-result v7

    .line 2595
    const/4 v8, 0x2

    .line 2596
    invoke-static {v8, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2597
    .line 2598
    .line 2599
    move-result v8

    .line 2600
    invoke-static {v2, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2601
    .line 2602
    .line 2603
    move-result v12

    .line 2604
    invoke-static {v7, v8, v12}, Lcom/sgscq/vpn/p5;->w0(III)Landroid/widget/LinearLayout$LayoutParams;

    .line 2605
    .line 2606
    .line 2607
    move-result-object v7

    .line 2608
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2609
    .line 2610
    .line 2611
    new-instance v5, Landroid/widget/LinearLayout;

    .line 2612
    .line 2613
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2614
    .line 2615
    .line 2616
    iput-object v5, v6, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 2617
    .line 2618
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2619
    .line 2620
    .line 2621
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 2622
    .line 2623
    const/4 v5, 0x4

    .line 2624
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2625
    .line 2626
    .line 2627
    move-result v5

    .line 2628
    const/4 v7, -0x2

    .line 2629
    const/4 v8, -0x1

    .line 2630
    const/4 v12, 0x0

    .line 2631
    invoke-static {v8, v7, v12, v12, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2632
    .line 2633
    .line 2634
    move-result-object v5

    .line 2635
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2636
    .line 2637
    .line 2638
    new-instance v2, Landroid/widget/Button;

    .line 2639
    .line 2640
    invoke-direct {v2, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2641
    .line 2642
    .line 2643
    const-string v5, "+ \u6dfb\u52a0\u670d\u52a1\u5668"

    .line 2644
    .line 2645
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2646
    .line 2647
    .line 2648
    const/high16 v5, 0x41600000    # 14.0f

    .line 2649
    .line 2650
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2651
    .line 2652
    .line 2653
    sget v5, Lcom/sgscq/vpn/p5;->B:I

    .line 2654
    .line 2655
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2656
    .line 2657
    .line 2658
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 2659
    .line 2660
    .line 2661
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2662
    .line 2663
    .line 2664
    invoke-virtual {v2, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2665
    .line 2666
    .line 2667
    const/16 v5, 0xc

    .line 2668
    .line 2669
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2670
    .line 2671
    .line 2672
    move-result v7

    .line 2673
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2674
    .line 2675
    .line 2676
    move-result v5

    .line 2677
    invoke-virtual {v2, v7, v12, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 2678
    .line 2679
    .line 2680
    const/16 v5, 0x8

    .line 2681
    .line 2682
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2683
    .line 2684
    .line 2685
    move-result v7

    .line 2686
    sget v8, Lcom/sgscq/vpn/p5;->C:I

    .line 2687
    .line 2688
    sget v12, Lcom/sgscq/vpn/p5;->x:I

    .line 2689
    .line 2690
    invoke-virtual {v6, v7, v8, v12}, Lcom/sgscq/vpn/SettingsActivity;->C(III)Landroid/graphics/drawable/GradientDrawable;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v7

    .line 2694
    sget v8, Lcom/sgscq/vpn/p5;->x:I

    .line 2695
    .line 2696
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2697
    .line 2698
    .line 2699
    move-result v5

    .line 2700
    int-to-float v5, v5

    .line 2701
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2702
    .line 2703
    .line 2704
    move-result-object v12

    .line 2705
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 2706
    .line 2707
    .line 2708
    move-result-object v12

    .line 2709
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 2710
    .line 2711
    invoke-static {v8, v5, v12}, Lcom/sgscq/vpn/p5;->y0(IFF)Landroid/graphics/drawable/GradientDrawable;

    .line 2712
    .line 2713
    .line 2714
    move-result-object v5

    .line 2715
    invoke-static {v2, v7, v5}, Lcom/sgscq/vpn/p5;->i(Landroid/widget/Button;Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/drawable/GradientDrawable;)V

    .line 2716
    .line 2717
    .line 2718
    new-instance v5, Lcom/sgscq/vpn/g6;

    .line 2719
    .line 2720
    const/4 v7, 0x2

    .line 2721
    invoke-direct {v5, v6, v7}, Lcom/sgscq/vpn/g6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    .line 2722
    .line 2723
    .line 2724
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2725
    .line 2726
    .line 2727
    const/16 v5, 0x10

    .line 2728
    .line 2729
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2730
    .line 2731
    .line 2732
    move-result v5

    .line 2733
    const/4 v7, -0x1

    .line 2734
    const/4 v8, 0x0

    .line 2735
    invoke-static {v7, v11, v8, v8, v5}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v5

    .line 2739
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2740
    .line 2741
    .line 2742
    new-instance v2, Landroid/widget/TextView;

    .line 2743
    .line 2744
    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2745
    .line 2746
    .line 2747
    const-string v5, "\u6dfb\u52a0\u7684\u670d\u52a1\u5668\u5c06\u5728\u6e38\u620f\u767b\u5f55\u65f6\u7684\u670d\u52a1\u5668\u5217\u8868\u4e2d\u663e\u793a\u3002"

    .line 2748
    .line 2749
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2750
    .line 2751
    .line 2752
    const/high16 v5, 0x41400000    # 12.0f

    .line 2753
    .line 2754
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2755
    .line 2756
    .line 2757
    sget v5, Lcom/sgscq/vpn/p5;->H:I

    .line 2758
    .line 2759
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2760
    .line 2761
    .line 2762
    const/16 v5, 0x11

    .line 2763
    .line 2764
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 2765
    .line 2766
    .line 2767
    const/4 v5, -0x2

    .line 2768
    invoke-static {v7, v5, v8, v8, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2769
    .line 2770
    .line 2771
    move-result-object v5

    .line 2772
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2773
    .line 2774
    .line 2775
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->h(FII)Landroid/widget/LinearLayout;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v2

    .line 2779
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->i(FII)Landroid/widget/LinearLayout;

    .line 2780
    .line 2781
    .line 2782
    move-result-object v4

    .line 2783
    invoke-virtual {v6, v10, v11, v13}, Lcom/sgscq/vpn/SettingsActivity;->g(FII)Landroid/widget/LinearLayout;

    .line 2784
    .line 2785
    .line 2786
    move-result-object v5

    .line 2787
    new-instance v7, Lcom/sgscq/vpn/c5;

    .line 2788
    .line 2789
    invoke-direct {v7, v6}, Lcom/sgscq/vpn/c5;-><init>(Landroid/app/Activity;)V

    .line 2790
    .line 2791
    .line 2792
    iget-object v8, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2793
    .line 2794
    move/from16 v10, v20

    .line 2795
    .line 2796
    move/from16 v14, v22

    .line 2797
    .line 2798
    invoke-virtual {v8, v14, v10, v14, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 2799
    .line 2800
    .line 2801
    if-eqz v16, :cond_20

    .line 2802
    .line 2803
    iget-object v8, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2804
    .line 2805
    move/from16 v10, v16

    .line 2806
    .line 2807
    invoke-virtual {v6, v0, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2808
    .line 2809
    .line 2810
    move-result-object v0

    .line 2811
    const/16 v11, 0xa

    .line 2812
    .line 2813
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2814
    .line 2815
    .line 2816
    move-result v12

    .line 2817
    const/4 v13, -0x2

    .line 2818
    const/4 v14, -0x1

    .line 2819
    const/4 v15, 0x0

    .line 2820
    invoke-static {v14, v13, v15, v15, v12}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v12

    .line 2824
    invoke-virtual {v8, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2825
    .line 2826
    .line 2827
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2828
    .line 2829
    invoke-virtual {v6, v1, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2830
    .line 2831
    .line 2832
    move-result-object v1

    .line 2833
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2834
    .line 2835
    .line 2836
    move-result v8

    .line 2837
    invoke-static {v14, v13, v15, v15, v8}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2838
    .line 2839
    .line 2840
    move-result-object v8

    .line 2841
    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2842
    .line 2843
    .line 2844
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2845
    .line 2846
    invoke-virtual {v6, v3, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2847
    .line 2848
    .line 2849
    move-result-object v1

    .line 2850
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2851
    .line 2852
    .line 2853
    move-result v3

    .line 2854
    invoke-static {v14, v13, v15, v15, v3}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v3

    .line 2858
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2859
    .line 2860
    .line 2861
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2862
    .line 2863
    invoke-virtual {v6, v2, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2864
    .line 2865
    .line 2866
    move-result-object v1

    .line 2867
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2868
    .line 2869
    .line 2870
    move-result v2

    .line 2871
    invoke-static {v14, v13, v15, v15, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2872
    .line 2873
    .line 2874
    move-result-object v2

    .line 2875
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2876
    .line 2877
    .line 2878
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2879
    .line 2880
    invoke-virtual {v6, v5, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2881
    .line 2882
    .line 2883
    move-result-object v1

    .line 2884
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2885
    .line 2886
    .line 2887
    move-result v2

    .line 2888
    invoke-static {v14, v13, v15, v15, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2889
    .line 2890
    .line 2891
    move-result-object v2

    .line 2892
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2893
    .line 2894
    .line 2895
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2896
    .line 2897
    invoke-virtual {v6, v4, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2898
    .line 2899
    .line 2900
    move-result-object v1

    .line 2901
    invoke-static {v11, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2902
    .line 2903
    .line 2904
    move-result v2

    .line 2905
    invoke-static {v14, v13, v15, v15, v2}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2906
    .line 2907
    .line 2908
    move-result-object v2

    .line 2909
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2910
    .line 2911
    .line 2912
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2913
    .line 2914
    invoke-virtual {v6, v9, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 2915
    .line 2916
    .line 2917
    move-result-object v1

    .line 2918
    invoke-static {v14, v13, v15, v15, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2919
    .line 2920
    .line 2921
    move-result-object v2

    .line 2922
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2923
    .line 2924
    .line 2925
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 2926
    .line 2927
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 2928
    .line 2929
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2930
    .line 2931
    .line 2932
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2933
    .line 2934
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2935
    .line 2936
    .line 2937
    const/4 v1, 0x1

    .line 2938
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2939
    .line 2940
    .line 2941
    sget v2, Lcom/sgscq/vpn/p5;->x:I

    .line 2942
    .line 2943
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2944
    .line 2945
    .line 2946
    move-object/from16 v8, v23

    .line 2947
    .line 2948
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2949
    .line 2950
    .line 2951
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 2952
    .line 2953
    .line 2954
    move-result v2

    .line 2955
    const/4 v3, -0x1

    .line 2956
    const/4 v4, 0x0

    .line 2957
    invoke-static {v3, v2, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2958
    .line 2959
    .line 2960
    move-result-object v2

    .line 2961
    move-object/from16 v11, v25

    .line 2962
    .line 2963
    invoke-virtual {v0, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2964
    .line 2965
    .line 2966
    iget-object v2, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 2967
    .line 2968
    invoke-static {v3, v4, v1, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 2969
    .line 2970
    .line 2971
    move-result-object v1

    .line 2972
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2973
    .line 2974
    .line 2975
    invoke-virtual {v7}, Lcom/sgscq/vpn/c5;->getPanelWidth()I

    .line 2976
    .line 2977
    .line 2978
    move-result v1

    .line 2979
    new-instance v2, Landroid/view/View;

    .line 2980
    .line 2981
    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2982
    .line 2983
    .line 2984
    sget v3, Lcom/sgscq/vpn/p5;->C:I

    .line 2985
    .line 2986
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2987
    .line 2988
    .line 2989
    new-instance v3, Landroid/widget/LinearLayout;

    .line 2990
    .line 2991
    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2992
    .line 2993
    .line 2994
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2995
    .line 2996
    .line 2997
    sget v5, Lcom/sgscq/vpn/p5;->x:I

    .line 2998
    .line 2999
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3000
    .line 3001
    .line 3002
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 3003
    .line 3004
    const/high16 v8, 0x3f800000    # 1.0f

    .line 3005
    .line 3006
    const/4 v9, -0x1

    .line 3007
    invoke-direct {v5, v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3008
    .line 3009
    .line 3010
    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3011
    .line 3012
    .line 3013
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3014
    .line 3015
    const/4 v4, 0x1

    .line 3016
    invoke-static {v4, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3017
    .line 3018
    .line 3019
    move-result v4

    .line 3020
    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3021
    .line 3022
    .line 3023
    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3024
    .line 3025
    .line 3026
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3027
    .line 3028
    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3029
    .line 3030
    .line 3031
    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3032
    .line 3033
    .line 3034
    invoke-virtual {v6, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 3035
    .line 3036
    .line 3037
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 3038
    .line 3039
    .line 3040
    goto/16 :goto_1b

    .line 3041
    .line 3042
    :cond_20
    move/from16 v10, v16

    .line 3043
    .line 3044
    move-object/from16 v8, v23

    .line 3045
    .line 3046
    move-object/from16 v11, v25

    .line 3047
    .line 3048
    const/4 v12, -0x1

    .line 3049
    iget-object v13, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3050
    .line 3051
    invoke-virtual {v6, v0, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3052
    .line 3053
    .line 3054
    move-result-object v0

    .line 3055
    const/16 v14, 0xc

    .line 3056
    .line 3057
    invoke-static {v14, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3058
    .line 3059
    .line 3060
    move-result v14

    .line 3061
    const/4 v15, 0x0

    .line 3062
    const/4 v11, -0x2

    .line 3063
    invoke-static {v12, v11, v15, v14, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3064
    .line 3065
    .line 3066
    move-result-object v14

    .line 3067
    invoke-virtual {v13, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3068
    .line 3069
    .line 3070
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3071
    .line 3072
    invoke-virtual {v6, v1, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3073
    .line 3074
    .line 3075
    move-result-object v1

    .line 3076
    const/16 v13, 0xc

    .line 3077
    .line 3078
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3079
    .line 3080
    .line 3081
    move-result v14

    .line 3082
    invoke-static {v12, v11, v15, v14, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3083
    .line 3084
    .line 3085
    move-result-object v14

    .line 3086
    invoke-virtual {v0, v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3087
    .line 3088
    .line 3089
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3090
    .line 3091
    invoke-virtual {v6, v3, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v1

    .line 3095
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3096
    .line 3097
    .line 3098
    move-result v3

    .line 3099
    invoke-static {v12, v11, v15, v3, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3100
    .line 3101
    .line 3102
    move-result-object v3

    .line 3103
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3104
    .line 3105
    .line 3106
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3107
    .line 3108
    invoke-virtual {v6, v2, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v1

    .line 3112
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3113
    .line 3114
    .line 3115
    move-result v2

    .line 3116
    invoke-static {v12, v11, v15, v2, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3117
    .line 3118
    .line 3119
    move-result-object v2

    .line 3120
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3121
    .line 3122
    .line 3123
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3124
    .line 3125
    invoke-virtual {v6, v5, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3126
    .line 3127
    .line 3128
    move-result-object v1

    .line 3129
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3130
    .line 3131
    .line 3132
    move-result v2

    .line 3133
    invoke-static {v12, v11, v15, v2, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3134
    .line 3135
    .line 3136
    move-result-object v2

    .line 3137
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3138
    .line 3139
    .line 3140
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3141
    .line 3142
    invoke-virtual {v6, v4, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3143
    .line 3144
    .line 3145
    move-result-object v1

    .line 3146
    invoke-static {v13, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3147
    .line 3148
    .line 3149
    move-result v2

    .line 3150
    invoke-static {v12, v11, v15, v2, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3151
    .line 3152
    .line 3153
    move-result-object v2

    .line 3154
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3155
    .line 3156
    .line 3157
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3158
    .line 3159
    invoke-virtual {v6, v9, v10}, Lcom/sgscq/vpn/SettingsActivity;->P(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    .line 3160
    .line 3161
    .line 3162
    move-result-object v1

    .line 3163
    invoke-static {v12, v11, v15, v15, v15}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3164
    .line 3165
    .line 3166
    move-result-object v2

    .line 3167
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3168
    .line 3169
    .line 3170
    iget-object v0, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 3171
    .line 3172
    iget-object v1, v6, Lcom/sgscq/vpn/SettingsActivity;->j:Landroid/widget/LinearLayout;

    .line 3173
    .line 3174
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 3175
    .line 3176
    .line 3177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3178
    .line 3179
    invoke-direct {v0, v12, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3180
    .line 3181
    .line 3182
    const/16 v1, 0x51

    .line 3183
    .line 3184
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3185
    .line 3186
    const/16 v1, 0x78

    .line 3187
    .line 3188
    invoke-static {v1, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3189
    .line 3190
    .line 3191
    move-result v1

    .line 3192
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3193
    .line 3194
    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3195
    .line 3196
    .line 3197
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3198
    .line 3199
    new-instance v3, Landroid/widget/FrameLayout;

    .line 3200
    .line 3201
    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3202
    .line 3203
    .line 3204
    sget v4, Lcom/sgscq/vpn/p5;->x:I

    .line 3205
    .line 3206
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3207
    .line 3208
    .line 3209
    iget-object v4, v6, Lcom/sgscq/vpn/SettingsActivity;->i:Landroid/widget/ScrollView;

    .line 3210
    .line 3211
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3212
    .line 3213
    .line 3214
    new-instance v2, Landroid/view/View;

    .line 3215
    .line 3216
    invoke-direct {v2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3217
    .line 3218
    .line 3219
    sget v4, Lcom/sgscq/vpn/p5;->C:I

    .line 3220
    .line 3221
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3222
    .line 3223
    .line 3224
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3225
    .line 3226
    const/4 v5, 0x1

    .line 3227
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3228
    .line 3229
    .line 3230
    move-result v9

    .line 3231
    const/4 v10, -0x1

    .line 3232
    invoke-direct {v4, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3233
    .line 3234
    .line 3235
    const/16 v9, 0x50

    .line 3236
    .line 3237
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3238
    .line 3239
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3240
    .line 3241
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3242
    .line 3243
    .line 3244
    invoke-virtual {v3, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3245
    .line 3246
    .line 3247
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3248
    .line 3249
    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3250
    .line 3251
    .line 3252
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3253
    .line 3254
    .line 3255
    sget v1, Lcom/sgscq/vpn/p5;->x:I

    .line 3256
    .line 3257
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3258
    .line 3259
    .line 3260
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3261
    .line 3262
    .line 3263
    invoke-static {v5, v6}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 3264
    .line 3265
    .line 3266
    move-result v1

    .line 3267
    const/4 v2, -0x1

    .line 3268
    const/4 v4, 0x0

    .line 3269
    invoke-static {v2, v1, v4, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3270
    .line 3271
    .line 3272
    move-result-object v1

    .line 3273
    move-object/from16 v7, v25

    .line 3274
    .line 3275
    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3276
    .line 3277
    .line 3278
    invoke-static {v2, v4, v5, v4, v4}, Lcom/sgscq/vpn/p5;->x0(IIIII)Landroid/widget/LinearLayout$LayoutParams;

    .line 3279
    .line 3280
    .line 3281
    move-result-object v1

    .line 3282
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3283
    .line 3284
    .line 3285
    invoke-virtual {v6, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 3286
    .line 3287
    .line 3288
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sgscq/vpn/SettingsActivity;->o()V

    .line 3289
    .line 3290
    .line 3291
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 3292
    .line 3293
    .line 3294
    move-result-object v0

    .line 3295
    invoke-virtual {v6, v0}, Lcom/sgscq/vpn/SettingsActivity;->l(Landroid/content/Intent;)V

    .line 3296
    .line 3297
    .line 3298
    return-void

    .line 3299
    :sswitch_data_0
    .sparse-switch
        -0x4d68cd78 -> :sswitch_3
        0x2eae91 -> :sswitch_2
        0x308060 -> :sswitch_1
        0x65e8905 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/SettingsActivity;->l(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->w:Lcom/sgscq/vpn/o6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x44d

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    array-length p2, p3

    if-lez p2, :cond_1

    aget p2, p3, p1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->O()V

    if-eqz p2, :cond_2

    const-string p2, "\u901a\u77e5\u6743\u9650\u5df2\u5f00\u542f"

    goto :goto_1

    :cond_2
    const-string p2, "\u901a\u77e5\u6743\u9650\u88ab\u62d2\u7edd\uff0c\u53ef\u5728\u7cfb\u7edf\u8bbe\u7f6e\u91cc\u624b\u52a8\u6253\u5f00"

    :goto_1
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->w:Lcom/sgscq/vpn/o6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/sgscq/vpn/o6;->run()V

    return-void
.end method

.method public final p(Ljava/lang/String;ZIIF)Landroid/widget/EditText;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextSize(F)V

    sget p5, Lcom/sgscq/vpn/p5;->F:I

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    sget p5, Lcom/sgscq/vpn/p5;->H:I

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3, p4, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Landroid/widget/RadioButton;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/sgscq/vpn/p5;->s0(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x41400000    # 12.0f

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x41500000    # 13.0f

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    .line 22
    .line 23
    sget v1, Lcom/sgscq/vpn/p5;->F:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x30

    .line 34
    .line 35
    invoke-static {v1, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "\u4ee3\u7406\u534f\u8bae "

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public final r(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->C:Lcom/sgscq/vpn/cloud/d0;

    .line 23
    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_6

    .line 33
    .line 34
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_2
    const/4 v3, 0x1

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "sgscq_cloud_auto_sync_v1"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v0, v2, v1}, Lcom/sgscq/vpn/cloud/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "next_sync_at_"

    .line 74
    .line 75
    const-string v4, "enabled_"

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    const-wide/16 v9, 0x0

    .line 96
    .line 97
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    const-wide/16 v9, 0xa

    .line 104
    .line 105
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    add-long/2addr v9, v7

    .line 110
    invoke-interface {v4, v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    .line 131
    .line 132
    :goto_1
    if-eqz p1, :cond_5

    .line 133
    .line 134
    const-string p1, "\u5df2\u5f00\u542f\u81ea\u52a8\u4e0a\u4f20\uff1a\u6e38\u73a9\u4e91\u5b58\u6863\u65f6\u672c\u5730\u6709\u53d8\u5316\u5c06\u5b9a\u65f6\u4e0a\u4f20"

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const-string p1, "\u5df2\u5173\u95ed\u81ea\u52a8\u4e0a\u4f20"

    .line 138
    .line 139
    :goto_2
    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catch_0
    move-exception p1

    .line 148
    invoke-static {p1}, Lcom/sgscq/vpn/SettingsActivity;->j(Ljava/lang/Exception;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_3
    return-void
.end method

.method public final s()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->a:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const-string v3, "custom_servers"

    .line 12
    .line 13
    const-string v4, "[]"

    .line 14
    .line 15
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move v2, v0

    .line 23
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "name"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v6, "host"

    .line 45
    .line 46
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v6, ":"

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, "port"

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v4, v2, v3}, Lcom/sgscq/vpn/SettingsActivity;->c(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    new-instance v1, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    const-string v2, "\u6682\u65e0\u81ea\u5b9a\u4e49\u670d\u52a1\u5668"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const/high16 v2, 0x41500000    # 13.0f

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    .line 99
    .line 100
    sget v2, Lcom/sgscq/vpn/p5;->H:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x11

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    .line 109
    .line 110
    const/16 v2, 0x14

    .line 111
    .line 112
    invoke-static {v2, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    const/16 v3, 0x10

    .line 117
    .line 118
    invoke-static {v3, p0}, Lcom/sgscq/vpn/p5;->S0(ILandroid/content/Context;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->b:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/sgscq/vpn/h;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "\u672a\u914d\u7f6e\u7231\u53d1\u7535\u767b\u5f55"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v1, Lcom/sgscq/vpn/p5;->C:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-boolean v2, v0, Lcom/sgscq/vpn/f;->c:Z

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    const-string v2, "\u672a\u767b\u5f55\u7231\u53d1\u7535"

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v2, v0, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v2, v0, Lcom/sgscq/vpn/f;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/sgscq/vpn/f;->a:Ljava/lang/String;

    .line 70
    .line 71
    :goto_1
    iget-boolean v3, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    iget-boolean v3, v0, Lcom/sgscq/vpn/f;->e:Z

    .line 77
    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    iget v3, v0, Lcom/sgscq/vpn/f;->f:I

    .line 81
    .line 82
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " \u00b7 LV"

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->l:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-boolean v0, v0, Lcom/sgscq/vpn/f;->d:Z

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 119
    .line 120
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_4
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->x:Lcom/sgscq/vpn/b0;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/b0;->b()Lcom/sgscq/vpn/z;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sgscq/vpn/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/sgscq/vpn/z;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/sgscq/vpn/z;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/sgscq/vpn/z;->e:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sgscq/vpn/f;->c:Z

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    invoke-virtual {v1}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u6b63\u5728\u8bfb\u53d6\u4e91\u7aef\u89d2\u8272\u72b6\u6001..."

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/SettingsActivity;->H(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sgscq/vpn/f6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sgscq/vpn/f6;-><init>(Lcom/sgscq/vpn/SettingsActivity;I)V

    const-string v2, "sgscq-cloud-status"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/q0;->b()Lcom/sgscq/vpn/cloud/d0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->z:Lcom/sgscq/vpn/h;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/sgscq/vpn/h;->l()Lcom/sgscq/vpn/d1;

    move-result-object v0

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sgscq/vpn/d1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/sgscq/vpn/d1;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/sgscq/vpn/d1;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/sgscq/vpn/d1;->e:J

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/sgscq/vpn/p5;->B:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final x(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-lez p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->t:Landroid/widget/ProgressBar;

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    if-lez p3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_8

    add-int/lit8 p1, p1, -0x1

    if-eq p1, v0, :cond_7

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6

    const/4 p3, 0x3

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-eq p1, p3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u6b63\u5728\u4e0b\u8f7d\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\u540c\u6b65\u5b8c\u6210\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u6b63\u5728\u5e94\u7528\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u6b63\u5728\u6821\u9a8c\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, "\u5176\u4ed6\u73a9\u5bb6\u9635\u5bb9\u5df2\u662f\u6700\u65b0"

    :goto_3
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sgscq/vpn/SettingsActivity;->I(ZZZZ)V

    iget-object p2, p0, Lcom/sgscq/vpn/SettingsActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    sget p2, Lcom/sgscq/vpn/p5;->C:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    throw p1

    :cond_9
    :goto_4
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/sgscq/vpn/p7;->h(Landroid/content/Context;)Lcom/sgscq/vpn/p7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v0, v0, Lcom/sgscq/vpn/p7;->r:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v2, "\u7981\u7528\u4e91\u5bf9\u624b"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v2, "\u542f\u7528\u4e91\u5bf9\u624b"

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->s:Landroid/widget/Button;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget v0, Lcom/sgscq/vpn/p5;->D:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final z(Lcom/sgscq/vpn/cloud/d0;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 6
    .line 7
    if-eqz v0, :cond_1e

    .line 8
    .line 9
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_15

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->C:Lcom/sgscq/vpn/cloud/d0;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->B()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Lcom/sgscq/vpn/m4;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/sgscq/vpn/m4;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/sgscq/vpn/m4;->k()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-boolean v1, v1, Lcom/sgscq/vpn/f;->c:Z

    .line 40
    .line 41
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 42
    .line 43
    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, 0x3

    .line 52
    const/4 v4, 0x2

    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v7, 0x0

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    new-instance v1, Lcom/sgscq/vpn/cloud/e0;

    .line 59
    .line 60
    invoke-direct {v1, v5}, Lcom/sgscq/vpn/cloud/e0;-><init>(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    if-nez v2, :cond_3

    .line 65
    .line 66
    new-instance v1, Lcom/sgscq/vpn/cloud/e0;

    .line 67
    .line 68
    invoke-direct {v1, v4}, Lcom/sgscq/vpn/cloud/e0;-><init>(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget-object v1, p1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object v1, p1, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget v2, p1, Lcom/sgscq/vpn/cloud/d0;->i:I

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x3b

    .line 92
    .line 93
    div-int/lit8 v2, v2, 0x3c

    .line 94
    .line 95
    iget v2, p1, Lcom/sgscq/vpn/cloud/d0;->j:I

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x3b

    .line 98
    .line 99
    div-int/lit8 v2, v2, 0x3c

    .line 100
    .line 101
    new-instance v2, Lcom/sgscq/vpn/cloud/e0;

    .line 102
    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    move v8, v6

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const/4 v8, 0x5

    .line 108
    :goto_0
    invoke-direct {v2, v8}, Lcom/sgscq/vpn/cloud/e0;-><init>(I)V

    .line 109
    .line 110
    .line 111
    move-object v1, v2

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    :goto_1
    new-instance v1, Lcom/sgscq/vpn/cloud/e0;

    .line 114
    .line 115
    invoke-direct {v1, v3}, Lcom/sgscq/vpn/cloud/e0;-><init>(I)V

    .line 116
    .line 117
    .line 118
    :goto_2
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->n:Lm/e;

    .line 119
    .line 120
    invoke-virtual {v2}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v8, p0, Lcom/sgscq/vpn/SettingsActivity;->k:Lcom/sgscq/vpn/h;

    .line 125
    .line 126
    invoke-virtual {v8}, Lcom/sgscq/vpn/h;->j()Lcom/sgscq/vpn/f;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    iget-boolean v8, v8, Lcom/sgscq/vpn/f;->c:Z

    .line 131
    .line 132
    if-eqz v8, :cond_7

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_7

    .line 139
    .line 140
    move v8, v5

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    move v8, v7

    .line 143
    :goto_3
    if-eqz v8, :cond_9

    .line 144
    .line 145
    iget-object v9, p0, Lcom/sgscq/vpn/SettingsActivity;->m:Lcom/sgscq/vpn/cloud/q0;

    .line 146
    .line 147
    iget-object v10, v9, Lcom/sgscq/vpn/cloud/q0;->b:Lm/e;

    .line 148
    .line 149
    invoke-virtual {v10}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v10}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_8

    .line 158
    .line 159
    iget-object v9, v9, Lcom/sgscq/vpn/cloud/q0;->e:Lcom/sgscq/vpn/m4;

    .line 160
    .line 161
    iget-object v10, v10, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v9, v10}, Lcom/sgscq/vpn/m4;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_8

    .line 172
    .line 173
    move v9, v5

    .line 174
    goto :goto_4

    .line 175
    :cond_8
    move v9, v7

    .line 176
    :goto_4
    if-eqz v9, :cond_9

    .line 177
    .line 178
    move v9, v5

    .line 179
    goto :goto_5

    .line 180
    :cond_9
    move v9, v7

    .line 181
    :goto_5
    if-eqz v8, :cond_a

    .line 182
    .line 183
    iget-object v10, p1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-nez v10, :cond_a

    .line 190
    .line 191
    move v10, v5

    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move v10, v7

    .line 194
    :goto_6
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_b

    .line 199
    .line 200
    iget-object v11, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {p1, v11, v0}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-eqz v11, :cond_b

    .line 207
    .line 208
    move v11, v5

    .line 209
    goto :goto_7

    .line 210
    :cond_b
    move v11, v7

    .line 211
    :goto_7
    if-eqz v11, :cond_c

    .line 212
    .line 213
    iget-object v12, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, v12, v0}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    move v0, v5

    .line 222
    goto :goto_8

    .line 223
    :cond_c
    move v0, v7

    .line 224
    :goto_8
    invoke-virtual {p0, v9, v10, v0, v5}, Lcom/sgscq/vpn/SettingsActivity;->I(ZZZZ)V

    .line 225
    .line 226
    .line 227
    if-eqz v8, :cond_d

    .line 228
    .line 229
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_d

    .line 236
    .line 237
    move v0, v5

    .line 238
    goto :goto_9

    .line 239
    :cond_d
    move v0, v7

    .line 240
    :goto_9
    iget-object v8, p0, Lcom/sgscq/vpn/SettingsActivity;->D:Landroid/widget/Button;

    .line 241
    .line 242
    if-eqz v8, :cond_e

    .line 243
    .line 244
    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    .line 246
    .line 247
    :cond_e
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 248
    .line 249
    const-string v8, ""

    .line 250
    .line 251
    if-eqz v0, :cond_13

    .line 252
    .line 253
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    iget-object v10, p1, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 260
    .line 261
    if-nez v0, :cond_f

    .line 262
    .line 263
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_f

    .line 268
    .line 269
    move v0, v5

    .line 270
    goto :goto_a

    .line 271
    :cond_f
    move v0, v7

    .line 272
    :goto_a
    iget-object v12, p0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 273
    .line 274
    invoke-virtual {v12, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    const-string v13, "sgscq_cloud_auto_sync_v1"

    .line 282
    .line 283
    invoke-virtual {v12, v13, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    if-eqz v0, :cond_12

    .line 288
    .line 289
    iget-object v0, v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v2, p1, Lcom/sgscq/vpn/cloud/d0;->b:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v0, v2, v10}, Lcom/sgscq/vpn/cloud/b0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_10

    .line 302
    .line 303
    move-object v0, v8

    .line 304
    goto :goto_b

    .line 305
    :cond_10
    const-string v2, "enabled_"

    .line 306
    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_11

    .line 316
    .line 317
    invoke-interface {v12, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_11

    .line 322
    .line 323
    move v0, v5

    .line 324
    goto :goto_c

    .line 325
    :cond_11
    move v0, v7

    .line 326
    :goto_c
    if-eqz v0, :cond_12

    .line 327
    .line 328
    move v0, v5

    .line 329
    goto :goto_d

    .line 330
    :cond_12
    move v0, v7

    .line 331
    :goto_d
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 332
    .line 333
    const/4 v10, 0x0

    .line 334
    invoke-virtual {v2, v10}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    .line 336
    .line 337
    iget-object v2, p0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 338
    .line 339
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/sgscq/vpn/SettingsActivity;->B:Landroid/widget/Switch;

    .line 343
    .line 344
    new-instance v2, Lcom/sgscq/vpn/j6;

    .line 345
    .line 346
    invoke-direct {v2, p0, v3}, Lcom/sgscq/vpn/j6;-><init>(Ljava/lang/Object;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 350
    .line 351
    .line 352
    :cond_13
    invoke-virtual {p0}, Lcom/sgscq/vpn/SettingsActivity;->y()V

    .line 353
    .line 354
    .line 355
    iget v0, v1, Lcom/sgscq/vpn/cloud/e0;->a:I

    .line 356
    .line 357
    invoke-static {v0}, La/b0;->c(I)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_1d

    .line 362
    .line 363
    if-eq v1, v5, :cond_1c

    .line 364
    .line 365
    if-eq v1, v4, :cond_1a

    .line 366
    .line 367
    if-ne v0, v6, :cond_14

    .line 368
    .line 369
    goto :goto_e

    .line 370
    :cond_14
    move v5, v7

    .line 371
    :goto_e
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/d0;->f:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_15

    .line 378
    .line 379
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/d0;->c:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v0}, Lcom/sgscq/vpn/m4;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    goto :goto_f

    .line 386
    :cond_15
    iget-object v0, p1, Lcom/sgscq/vpn/cloud/d0;->f:Ljava/lang/String;

    .line 387
    .line 388
    :goto_f
    iget-object v1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 389
    .line 390
    const-string v2, "\u4e91\u7aef\u89d2\u8272 "

    .line 391
    .line 392
    const-string v3, "\uff08\u7b49\u7ea7 "

    .line 393
    .line 394
    invoke-static {v2, v0, v3}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    iget v2, p1, Lcom/sgscq/vpn/cloud/d0;->g:I

    .line 399
    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v2, "\uff0c\u6218\u529b "

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    iget-wide v2, p1, Lcom/sgscq/vpn/cloud/d0;->h:D

    .line 409
    .line 410
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 411
    .line 412
    .line 413
    move-result-wide v2

    .line 414
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v2, "\uff0c\u7248\u672c "

    .line 418
    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    iget v2, p1, Lcom/sgscq/vpn/cloud/d0;->d:I

    .line 423
    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v2, "\uff09\uff1b\u6700\u540e\u540c\u6b65\uff1a"

    .line 428
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget-wide v2, p1, Lcom/sgscq/vpn/cloud/d0;->k:J

    .line 433
    .line 434
    const-wide/16 v6, 0x0

    .line 435
    .line 436
    cmp-long p1, v2, v6

    .line 437
    .line 438
    if-gtz p1, :cond_16

    .line 439
    .line 440
    const-string p1, "\u5c1a\u672a\u540c\u6b65"

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_16
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 444
    .line 445
    const-string v4, "yyyy-MM-dd HH:mm"

    .line 446
    .line 447
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-direct {p1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 452
    .line 453
    .line 454
    new-instance v4, Ljava/util/Date;

    .line 455
    .line 456
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    :goto_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    if-eqz v5, :cond_17

    .line 467
    .line 468
    const-string p1, "\uff0c\u5f53\u524d\u5df2\u9009\u4e2d"

    .line 469
    .line 470
    goto :goto_11

    .line 471
    :cond_17
    const-string p1, "\uff0c\u5f53\u524d\u672a\u9009\u4e2d"

    .line 472
    .line 473
    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    if-eqz v5, :cond_18

    .line 477
    .line 478
    if-nez v11, :cond_18

    .line 479
    .line 480
    const-string v8, "\uff1b\u8bf7\u5148\u624b\u52a8\u4e0a\u4f20\u6216\u4e0b\u8f7d\u4ee5\u542f\u7528\u4e91\u5bf9\u624b"

    .line 481
    .line 482
    :cond_18
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 493
    .line 494
    if-eqz v5, :cond_19

    .line 495
    .line 496
    sget v0, Lcom/sgscq/vpn/p5;->B:I

    .line 497
    .line 498
    goto :goto_12

    .line 499
    :cond_19
    sget v0, Lcom/sgscq/vpn/p5;->C:I

    .line 500
    .line 501
    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_1a
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 506
    .line 507
    if-eqz v9, :cond_1b

    .line 508
    .line 509
    const-string v0, "\u5c1a\u672a\u7ed1\u5b9a\u670d\u52a1\u5668\u4e91\u5b58\u6863\uff0c\u70b9\u51fb\u4e0a\u4f20\u5c06\u7ed1\u5b9a\u672c\u4eba\u4e91\u5b58\u6863"

    .line 510
    .line 511
    goto :goto_13

    .line 512
    :cond_1b
    const-string v0, "\u8bf7\u5148\u5728\u5b58\u6863\u7ba1\u7406\u4e2d\u65b0\u5efa\u672c\u4eba\u4e91\u5b58\u6863"

    .line 513
    .line 514
    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 518
    .line 519
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 520
    .line 521
    goto :goto_14

    .line 522
    :cond_1c
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 523
    .line 524
    const-string v0, "\u8bf7\u91cd\u65b0\u767b\u5f55\u7231\u53d1\u7535\u4ee5\u542f\u7528\u4e91\u7aef\u89d2\u8272\u540c\u6b65"

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 530
    .line 531
    sget v0, Lcom/sgscq/vpn/p5;->C:I

    .line 532
    .line 533
    :goto_14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :cond_1d
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 538
    .line 539
    const-string v0, "\u767b\u5f55\u7231\u53d1\u7535\u540e\u53ef\u4f7f\u7528\u4e91\u7aef\u89d2\u8272\u540c\u6b65"

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lcom/sgscq/vpn/SettingsActivity;->o:Landroid/widget/TextView;

    .line 545
    .line 546
    sget v0, Lcom/sgscq/vpn/p5;->G:I

    .line 547
    .line 548
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    .line 550
    .line 551
    :cond_1e
    :goto_15
    return-void
.end method
