.class public final synthetic Lcom/sgscq/vpn/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:[Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;[Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/h4;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sgscq/vpn/h4;->b:[Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    .line 1
    sget p1, Lcom/sgscq/vpn/PassportActivity;->q:I

    .line 2
    .line 3
    sget-object p1, Lcom/sgscq/vpn/cloud/u0;->f:La/o;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/sgscq/vpn/h4;->a:Ljava/util/List;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt p2, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/sgscq/vpn/cloud/t0;

    .line 23
    .line 24
    iput-boolean p3, p2, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sgscq/vpn/h4;->b:[Landroid/app/AlertDialog;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    aget-object v0, p2, p3

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    move v0, p3

    .line 34
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v0, v1, :cond_2

    .line 39
    .line 40
    aget-object v1, p2, p3

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/sgscq/vpn/cloud/t0;

    .line 51
    .line 52
    iget-boolean v2, v2, Lcom/sgscq/vpn/cloud/t0;->b:Z

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method
