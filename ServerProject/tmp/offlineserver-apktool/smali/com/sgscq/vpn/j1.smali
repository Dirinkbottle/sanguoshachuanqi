.class public final synthetic Lcom/sgscq/vpn/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/j1;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/sgscq/vpn/j1;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/sgscq/vpn/j1;->a:Landroid/widget/EditText;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/sgscq/vpn/j1;->b:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/sgscq/vpn/p5;->a(Landroid/widget/EditText;Landroid/view/ViewGroup;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
