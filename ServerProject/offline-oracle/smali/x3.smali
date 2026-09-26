.class public final synthetic Lcom/sgscq/vpn/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/PassportActivity;

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/PassportActivity;Landroid/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/x3;->a:Lcom/sgscq/vpn/PassportActivity;

    iput-object p2, p0, Lcom/sgscq/vpn/x3;->b:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/sgscq/vpn/x3;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/sgscq/vpn/x3;->a:Lcom/sgscq/vpn/PassportActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/sgscq/vpn/x3;->b:Landroid/app/AlertDialog;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/lang/Thread;

    .line 14
    .line 15
    new-instance v0, Lcom/sgscq/vpn/a4;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v2, p0, Lcom/sgscq/vpn/x3;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {v0, p1, v2, v1}, Lcom/sgscq/vpn/a4;-><init>(Lcom/sgscq/vpn/PassportActivity;Ljava/util/List;I)V

    .line 21
    .line 22
    .line 23
    const-string p1, "sgscq-save-archive-import-write"

    .line 24
    .line 25
    invoke-direct {p2, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
