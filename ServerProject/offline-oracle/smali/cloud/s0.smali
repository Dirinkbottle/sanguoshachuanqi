.class public final Lcom/sgscq/vpn/cloud/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:I

.field public final f:D

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIDLjava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/sgscq/vpn/cloud/s0;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/sgscq/vpn/cloud/s0;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    move-object p3, v0

    :cond_2
    iput-object p3, p0, Lcom/sgscq/vpn/cloud/s0;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sgscq/vpn/cloud/s0;->d:J

    const/4 p1, 0x0

    invoke-static {p1, p6}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sgscq/vpn/cloud/s0;->e:I

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/sgscq/vpn/cloud/s0;->f:D

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/cloud/s0;->g:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/sgscq/vpn/cloud/s0;->h:Ljava/util/LinkedHashMap;

    .line 2
    invoke-interface {p1, p9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p10, :cond_3

    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    return-void
.end method
