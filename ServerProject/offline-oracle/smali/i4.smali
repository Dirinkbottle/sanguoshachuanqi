.class public final synthetic Lcom/sgscq/vpn/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Landroid/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/i4;->a:Lcom/sgscq/vpn/PassportActivity;

    iput-object p2, p0, Lcom/sgscq/vpn/i4;->b:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/sgscq/vpn/i4;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/sgscq/vpn/i4;->a:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iget-object v1, p0, Lcom/sgscq/vpn/i4;->b:Landroid/app/AlertDialog;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lcom/sgscq/vpn/t3;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iget-object v4, p0, Lcom/sgscq/vpn/i4;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {v2, p1, v4, v1, v3}, Lcom/sgscq/vpn/t3;-><init>(Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
