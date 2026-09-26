.class public final Lcom/sgscq/vpn/config/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p7, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/sgscq/vpn/config/e;->a:I

    .line 8
    .line 9
    iput p2, p0, Lcom/sgscq/vpn/config/e;->b:I

    .line 10
    .line 11
    iput p3, p0, Lcom/sgscq/vpn/config/e;->c:I

    .line 12
    .line 13
    iput p4, p0, Lcom/sgscq/vpn/config/e;->d:I

    .line 14
    .line 15
    iput p5, p0, Lcom/sgscq/vpn/config/e;->e:I

    .line 16
    .line 17
    iput p6, p0, Lcom/sgscq/vpn/config/e;->f:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/sgscq/vpn/config/e;->a:I

    .line 28
    .line 29
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/sgscq/vpn/config/e;->b:I

    .line 34
    .line 35
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/sgscq/vpn/config/e;->c:I

    .line 40
    .line 41
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/sgscq/vpn/config/e;->d:I

    .line 46
    .line 47
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput p1, p0, Lcom/sgscq/vpn/config/e;->e:I

    .line 52
    .line 53
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/sgscq/vpn/config/e;->f:I

    .line 58
    .line 59
    return-void
.end method
