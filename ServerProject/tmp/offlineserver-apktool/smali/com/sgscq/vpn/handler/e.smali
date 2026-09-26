.class public final Lcom/sgscq/vpn/handler/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public d:Ljava/util/Map;

.field public e:Ljava/util/Map;

.field public f:Lcom/sgscq/vpn/w1;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:D

.field public p:D

.field public q:D

.field public r:D

.field public s:D

.field public t:D

.field public u:D

.field public v:D


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/sgscq/vpn/handler/e;->o:D

    .line 10
    .line 11
    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lcom/sgscq/vpn/handler/e;->p:D

    .line 17
    .line 18
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/sgscq/vpn/handler/e;->q:D

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/sgscq/vpn/handler/e;->r:D

    .line 23
    .line 24
    iput-object p1, p0, Lcom/sgscq/vpn/handler/e;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput p2, p0, Lcom/sgscq/vpn/handler/e;->b:I

    .line 27
    .line 28
    iput p3, p0, Lcom/sgscq/vpn/handler/e;->c:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(DDD)V
    .locals 2

    .line 1
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/sgscq/vpn/handler/e;->o:D

    iput-wide p1, p0, Lcom/sgscq/vpn/handler/e;->p:D

    iput-wide p3, p0, Lcom/sgscq/vpn/handler/e;->q:D

    iput-wide p5, p0, Lcom/sgscq/vpn/handler/e;->r:D

    return-void
.end method
