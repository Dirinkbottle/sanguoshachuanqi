.class public final synthetic Lcom/sgscq/vpn/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/h1;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sgscq/vpn/h1;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    const/16 p1, 0x17

    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x42

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/sgscq/vpn/h1;->a:Landroid/widget/EditText;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/sgscq/vpn/h1;->b:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/sgscq/vpn/p5;->a(Landroid/widget/EditText;Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method
