.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field avoidPreviousWeek:Z
    .annotation runtime Lb/b;
        value = "avoid_previous_week"
    .end annotation
.end field

.field mode:Ljava/lang/String;

.field recentLookback:I
    .annotation runtime Lb/b;
        value = "recent_lookback"
    .end annotation
.end field

.field seedNamespace:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "seed_namespace"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
