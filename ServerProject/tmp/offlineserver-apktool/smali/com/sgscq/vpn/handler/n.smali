.class public final Lcom/sgscq/vpn/handler/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/n;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sgscq/vpn/handler/n;->b:I

    iput p3, p0, Lcom/sgscq/vpn/handler/n;->c:I

    iput-wide p4, p0, Lcom/sgscq/vpn/handler/n;->d:J

    iput-boolean p6, p0, Lcom/sgscq/vpn/handler/n;->e:Z

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/sgscq/vpn/handler/n;->e:Z

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/sgscq/vpn/handler/n;->d:J

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-long v3, p1

    .line 13
    mul-long/2addr v3, v3

    .line 14
    const-wide/16 v5, 0x64

    .line 15
    .line 16
    div-long/2addr v3, v5

    .line 17
    const-wide/16 v5, 0x1

    .line 18
    .line 19
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    cmp-long p1, v1, v5

    .line 26
    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    const-wide v5, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    div-long v7, v5, v1

    .line 35
    .line 36
    cmp-long p1, v3, v7

    .line 37
    .line 38
    if-lez p1, :cond_0

    .line 39
    .line 40
    move-wide v1, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    mul-long/2addr v1, v3

    .line 43
    :cond_1
    :goto_0
    return-wide v1
.end method
