.class public final Lcom/sgscq/vpn/handler/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:I

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sgscq/vpn/handler/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/handler/o;->c:Ljava/lang/String;

    iput p4, p0, Lcom/sgscq/vpn/handler/o;->d:I

    iput p5, p0, Lcom/sgscq/vpn/handler/o;->e:I

    iput p6, p0, Lcom/sgscq/vpn/handler/o;->f:I

    iput-object p7, p0, Lcom/sgscq/vpn/handler/o;->g:Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, p0, Lcom/sgscq/vpn/handler/o;->h:I

    const/4 p1, 0x1

    invoke-static {p1, p8}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/handler/o;->i:I

    iput-object p9, p0, Lcom/sgscq/vpn/handler/o;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    const-string p1, "191006"

    .line 11
    .line 12
    :goto_0
    move-object v2, p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v1, 0x20

    .line 15
    .line 16
    if-lt p1, v1, :cond_1

    .line 17
    .line 18
    const-string p1, "191005"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v1, 0x18

    .line 22
    .line 23
    if-lt p1, v1, :cond_2

    .line 24
    .line 25
    const-string p1, "192004"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/16 v1, 0x10

    .line 29
    .line 30
    if-lt p1, v1, :cond_3

    .line 31
    .line 32
    const-string p1, "192003"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/16 v1, 0x8

    .line 36
    .line 37
    if-lt p1, v1, :cond_4

    .line 38
    .line 39
    const-string p1, "193002"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const-string p1, "194001"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    new-instance p1, Lcom/sgscq/vpn/handler/n;

    .line 46
    .line 47
    const/4 v3, 0x6

    .line 48
    const/4 v4, 0x6

    .line 49
    iget v1, p0, Lcom/sgscq/vpn/handler/o;->i:I

    .line 50
    .line 51
    int-to-long v5, v1

    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v1, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/sgscq/vpn/handler/n;-><init>(Ljava/lang/String;IIJZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/sgscq/vpn/handler/o;->j:Ljava/util/List;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
