.class public final Lcom/sgscq/vpn/o5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/w1;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:I

.field public final f:Ljava/util/List;

.field public final g:I

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sgscq/vpn/o5;->a:Lcom/sgscq/vpn/w1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/sgscq/vpn/o5;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/sgscq/vpn/o5;->c:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/sgscq/vpn/o5;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/sgscq/vpn/o5;->e:I

    .line 21
    .line 22
    iput-object p4, p0, Lcom/sgscq/vpn/o5;->f:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/sgscq/vpn/o5;->g:I

    .line 29
    .line 30
    iput-object p5, p0, Lcom/sgscq/vpn/o5;->h:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Lcom/sgscq/vpn/o5;Lcom/sgscq/vpn/w1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/o5;->a:Lcom/sgscq/vpn/w1;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/sgscq/vpn/o5;->b:Ljava/util/List;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/sgscq/vpn/o5;->c:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/sgscq/vpn/o5;->d:Ljava/util/List;

    .line 18
    .line 19
    if-ne p1, p3, :cond_0

    .line 20
    .line 21
    iget p1, p0, Lcom/sgscq/vpn/o5;->e:I

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/sgscq/vpn/o5;->f:Ljava/util/List;

    .line 30
    .line 31
    if-ne p1, p4, :cond_0

    .line 32
    .line 33
    iget p0, p0, Lcom/sgscq/vpn/o5;->g:I

    .line 34
    .line 35
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p0, p1, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
.end method
