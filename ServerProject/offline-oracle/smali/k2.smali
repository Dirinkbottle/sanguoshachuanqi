.class public final Lcom/sgscq/vpn/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sgscq/vpn/config/l;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/sgscq/vpn/config/l;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/k2;->a:Lcom/sgscq/vpn/config/l;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sgscq/vpn/k2;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sgscq/vpn/config/i;J)Lcom/sgscq/vpn/config/l;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v2, v1, Lcom/sgscq/vpn/k2;->a:Lcom/sgscq/vpn/config/l;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    new-instance v3, Lcom/sgscq/vpn/config/k;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Lcom/sgscq/vpn/config/k;-><init>(Lcom/sgscq/vpn/config/i;)V

    .line 13
    .line 14
    .line 15
    iget v0, v2, Lcom/sgscq/vpn/config/l;->b:I

    .line 16
    .line 17
    iget v4, v2, Lcom/sgscq/vpn/config/l;->h:I

    .line 18
    .line 19
    move-wide/from16 v5, p2

    .line 20
    .line 21
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/sgscq/vpn/config/k;->a(IIJ)I

    .line 22
    .line 23
    .line 24
    move-result v14

    .line 25
    new-instance v0, Lcom/sgscq/vpn/config/l;

    .line 26
    .line 27
    move-object v5, v0

    .line 28
    iget-object v6, v2, Lcom/sgscq/vpn/config/l;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget v7, v2, Lcom/sgscq/vpn/config/l;->b:I

    .line 31
    .line 32
    iget-object v8, v2, Lcom/sgscq/vpn/config/l;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v9, v2, Lcom/sgscq/vpn/config/l;->d:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v10, v2, Lcom/sgscq/vpn/config/l;->e:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v11, v2, Lcom/sgscq/vpn/config/l;->f:Ljava/lang/String;

    .line 39
    .line 40
    iget v12, v2, Lcom/sgscq/vpn/config/l;->g:I

    .line 41
    .line 42
    iget v13, v2, Lcom/sgscq/vpn/config/l;->h:I

    .line 43
    .line 44
    iget v15, v2, Lcom/sgscq/vpn/config/l;->j:I

    .line 45
    .line 46
    iget v3, v2, Lcom/sgscq/vpn/config/l;->k:I

    .line 47
    .line 48
    move/from16 v16, v3

    .line 49
    .line 50
    iget-wide v3, v2, Lcom/sgscq/vpn/config/l;->l:J

    .line 51
    .line 52
    move-wide/from16 v17, v3

    .line 53
    .line 54
    iget-wide v3, v2, Lcom/sgscq/vpn/config/l;->m:J

    .line 55
    .line 56
    move-wide/from16 v19, v3

    .line 57
    .line 58
    iget-object v2, v2, Lcom/sgscq/vpn/config/l;->n:Ljava/lang/String;

    .line 59
    .line 60
    move-object/from16 v21, v2

    .line 61
    .line 62
    invoke-direct/range {v5 .. v21}, Lcom/sgscq/vpn/config/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIJJLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
