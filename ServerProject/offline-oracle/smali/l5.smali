.class public final Lcom/sgscq/vpn/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:D

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(IIIIDII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sgscq/vpn/l5;->a:I

    iput p2, p0, Lcom/sgscq/vpn/l5;->b:I

    iput p3, p0, Lcom/sgscq/vpn/l5;->c:I

    iput p4, p0, Lcom/sgscq/vpn/l5;->d:I

    iput-wide p5, p0, Lcom/sgscq/vpn/l5;->e:D

    iput p7, p0, Lcom/sgscq/vpn/l5;->f:I

    iput p8, p0, Lcom/sgscq/vpn/l5;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/l5;)I
    .locals 4

    .line 1
    iget v0, p1, Lcom/sgscq/vpn/l5;->a:I

    iget v1, p0, Lcom/sgscq/vpn/l5;->a:I

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/sgscq/vpn/l5;->b:I

    iget v1, p1, Lcom/sgscq/vpn/l5;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/sgscq/vpn/l5;->c:I

    iget v1, p1, Lcom/sgscq/vpn/l5;->c:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/sgscq/vpn/l5;->d:I

    iget v1, p1, Lcom/sgscq/vpn/l5;->d:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-wide v0, p0, Lcom/sgscq/vpn/l5;->e:D

    iget-wide v2, p1, Lcom/sgscq/vpn/l5;->e:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget v0, p0, Lcom/sgscq/vpn/l5;->f:I

    iget v1, p1, Lcom/sgscq/vpn/l5;->f:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sgscq/vpn/l5;->g:I

    iget p1, p1, Lcom/sgscq/vpn/l5;->g:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sgscq/vpn/l5;

    invoke-virtual {p0, p1}, Lcom/sgscq/vpn/l5;->a(Lcom/sgscq/vpn/l5;)I

    move-result p1

    return p1
.end method
