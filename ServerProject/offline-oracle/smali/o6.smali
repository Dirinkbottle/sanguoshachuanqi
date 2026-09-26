.class public final Lcom/sgscq/vpn/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sgscq/vpn/o6;->a:Lcom/sgscq/vpn/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/o6;->a:Lcom/sgscq/vpn/SettingsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget v1, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->B()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/sgscq/vpn/SettingsActivity;->v:Landroid/os/Handler;

    .line 25
    .line 26
    const-wide/16 v1, 0xfa

    .line 27
    .line 28
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->v()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method
