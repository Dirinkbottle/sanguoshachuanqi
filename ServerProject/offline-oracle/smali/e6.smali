.class public final synthetic Lcom/sgscq/vpn/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/SettingsActivity;

.field public final synthetic b:Lcom/sgscq/vpn/cloud/d0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;Lcom/sgscq/vpn/cloud/d0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/e6;->a:Lcom/sgscq/vpn/SettingsActivity;

    iput-object p2, p0, Lcom/sgscq/vpn/e6;->b:Lcom/sgscq/vpn/cloud/d0;

    iput p3, p0, Lcom/sgscq/vpn/e6;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/sgscq/vpn/e6;->a:Lcom/sgscq/vpn/SettingsActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/sgscq/vpn/SettingsActivity;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/sgscq/vpn/e6;->b:Lcom/sgscq/vpn/cloud/d0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/sgscq/vpn/SettingsActivity;->z(Lcom/sgscq/vpn/cloud/d0;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "\u5df2\u6062\u590d\u5230\u8282\u70b9 r"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/sgscq/vpn/e6;->c:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "\uff08\u4ec5\u672c\u5730\uff1b\u9700\u4e0a\u4f20\u624d\u4f1a\u8986\u76d6\u4e91\u7aef\uff09"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
