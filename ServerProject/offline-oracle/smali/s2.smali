.class public final synthetic Lcom/sgscq/vpn/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/y2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/y2;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/s2;->a:Lcom/sgscq/vpn/y2;

    iput-object p2, p0, Lcom/sgscq/vpn/s2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/s2;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/s2;->a:Lcom/sgscq/vpn/y2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sgscq/vpn/s2;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/sgscq/vpn/s2;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/sgscq/vpn/y2;->e2(Ljava/lang/String;Ljava/util/Map;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
