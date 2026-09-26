.class public final Lcom/sgscq/vpn/handler/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    const-string v1, "resource_id"

    .line 4
    .line 5
    const-string v2, "general_id"

    .line 6
    .line 7
    const-string v3, "general_config_id"

    .line 8
    .line 9
    const-string v4, "base_general_id"

    .line 10
    .line 11
    const-string v5, "general_skin"

    .line 12
    .line 13
    const-string v6, "pk_id"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/sgscq/vpn/handler/u;->b:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/u;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sgscq/vpn/handler/u;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
