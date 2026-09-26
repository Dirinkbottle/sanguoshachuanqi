.class public final synthetic Lcom/sgscq/vpn/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/p3;->a:Landroid/app/Activity;

    const-string p1, "1.0.1.14067"

    iput-object p1, p0, Lcom/sgscq/vpn/p3;->b:Ljava/lang/String;

    const/16 p1, 0x44d

    iput p1, p0, Lcom/sgscq/vpn/p3;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sgscq/vpn/p3;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/sgscq/vpn/p3;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/sgscq/vpn/p5;->A0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/sgscq/vpn/p3;->c:I

    .line 9
    .line 10
    invoke-static {p2, p1}, Lcom/sgscq/vpn/p5;->Z0(Landroid/app/Activity;I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Lcom/sgscq/vpn/p5;->J0(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
