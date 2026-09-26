.class public final synthetic Lcom/sgscq/vpn/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/b6;->a:Lcom/sgscq/vpn/SettingsActivity;

    iput p2, p0, Lcom/sgscq/vpn/b6;->b:I

    iput-wide p3, p0, Lcom/sgscq/vpn/b6;->c:J

    iput p5, p0, Lcom/sgscq/vpn/b6;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/b6;->a:Lcom/sgscq/vpn/SettingsActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v2, p0, Lcom/sgscq/vpn/b6;->b:I

    .line 9
    .line 10
    if-gez v2, :cond_1

    .line 11
    .line 12
    const-string v2, "\u5df2\u5bfc\u5165\u6587\u4ef6\u635f\u574f\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 18
    .line 19
    sget v1, Lcom/sgscq/vpn/p5;->D:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 23
    .line 24
    iget-wide v3, p0, Lcom/sgscq/vpn/b6;->c:J

    .line 25
    .line 26
    long-to-double v3, v3

    .line 27
    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    .line 28
    .line 29
    div-double/2addr v3, v5

    .line 30
    div-double/2addr v3, v5

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "%.1f"

    .line 40
    .line 41
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "\u5df2\u5bfc\u5165 "

    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " \u5f20\uff08"

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " MB\uff09\uff0c\u5176\u4e2d "

    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/sgscq/vpn/b6;->d:I

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " \u5f20\u53ef\u5339\u914d\u6b66\u5c06\u7acb\u7ed8"

    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lcom/sgscq/vpn/SettingsActivity;->S:Landroid/widget/TextView;

    .line 88
    .line 89
    sget v1, Lcom/sgscq/vpn/p5;->B:I

    .line 90
    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method
