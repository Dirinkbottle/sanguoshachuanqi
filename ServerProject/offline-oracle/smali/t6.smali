.class public final Lcom/sgscq/vpn/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/t6;->a:I

    iput-object p2, p0, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_1

    iget v1, p0, Lcom/sgscq/vpn/t6;->a:I

    const/high16 v2, 0x10000

    div-int v3, v1, v2

    rem-int/2addr v1, v2

    iget-object v4, p0, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_0

    new-array v5, v2, [B

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sub-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    sub-int/2addr p2, v2

    iget v1, p0, Lcom/sgscq/vpn/t6;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sgscq/vpn/t6;->a:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/sgscq/vpn/n;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sgscq/vpn/t6;->a:I

    iget-object v1, p0, Lcom/sgscq/vpn/t6;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/high16 v3, 0x10000

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Lcom/sgscq/vpn/n;->write([BII)V

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
