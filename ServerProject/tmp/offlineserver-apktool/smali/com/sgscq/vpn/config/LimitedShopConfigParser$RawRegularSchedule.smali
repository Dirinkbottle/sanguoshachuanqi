.class final Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRegularSchedule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field enabled:Z

.field intervalSeconds:J
    .annotation runtime Lb/b;
        value = "interval_seconds"
    .end annotation
.end field

.field plannedRotation:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawPlannedRotation;
    .annotation runtime Lb/b;
        value = "planned_rotation"
    .end annotation
.end field

.field randomization:Lcom/sgscq/vpn/config/LimitedShopConfigParser$RawRandomization;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
