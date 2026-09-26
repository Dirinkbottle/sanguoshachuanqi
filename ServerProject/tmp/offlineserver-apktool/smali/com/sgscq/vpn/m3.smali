.class public final synthetic Lcom/sgscq/vpn/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/MainActivity;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/sgscq/vpn/c7;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/MainActivity;ZLcom/sgscq/vpn/c7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/m3;->a:Lcom/sgscq/vpn/MainActivity;

    iput-boolean p2, p0, Lcom/sgscq/vpn/m3;->b:Z

    iput-object p3, p0, Lcom/sgscq/vpn/m3;->c:Lcom/sgscq/vpn/c7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/sgscq/vpn/MainActivity;->F:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/sgscq/vpn/m3;->b:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/sgscq/vpn/m3;->a:Lcom/sgscq/vpn/MainActivity;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/sgscq/vpn/MainActivity;->m()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/sgscq/vpn/m3;->c:Lcom/sgscq/vpn/c7;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/sgscq/vpn/c7;->j()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lp/l;->c(Landroid/content/Context;)Lp/l;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Lcom/sgscq/vpn/f3;

    .line 35
    .line 36
    const/16 v3, 0xf

    .line 37
    .line 38
    invoke-direct {v2, v1, v3}, Lcom/sgscq/vpn/f3;-><init>(Lcom/sgscq/vpn/MainActivity;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lp/l;->n(Lcom/sgscq/vpn/f3;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/sgscq/vpn/MainActivity;->j()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
