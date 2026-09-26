.class public final enum Li/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Li/a;

.field public static final enum b:Li/a;

.field public static final enum c:Li/a;

.field public static final enum d:Li/a;

.field public static final enum e:Li/a;

.field public static final enum f:Li/a;

.field public static final enum g:Li/a;

.field public static final synthetic h:[Li/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v1, Li/a;

    move-object v0, v1

    const-string v2, "ERROR_CORRECTION"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/a;->a:Li/a;

    new-instance v2, Li/a;

    move-object v1, v2

    const-string v3, "CHARACTER_SET"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Li/a;->b:Li/a;

    new-instance v3, Li/a;

    move-object v2, v3

    const-string v4, "DATA_MATRIX_SHAPE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v4, Li/a;

    move-object v3, v4

    const-string v5, "DATA_MATRIX_COMPACT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v5, Li/a;

    move-object v4, v5

    const-string v6, "MIN_SIZE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v6, Li/a;

    move-object v5, v6

    const-string v7, "MAX_SIZE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v7, Li/a;

    move-object v6, v7

    const-string v8, "MARGIN"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li/a;->c:Li/a;

    new-instance v8, Li/a;

    move-object v7, v8

    const-string v9, "PDF417_COMPACT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v9, Li/a;

    move-object v8, v9

    const-string v10, "PDF417_COMPACTION"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v10, Li/a;

    move-object v9, v10

    const-string v11, "PDF417_DIMENSIONS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v11, Li/a;

    move-object v10, v11

    const-string v12, "PDF417_AUTO_ECI"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v12, Li/a;

    move-object v11, v12

    const-string v13, "AZTEC_LAYERS"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v13, Li/a;

    move-object v12, v13

    const-string v14, "QR_VERSION"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Li/a;->d:Li/a;

    new-instance v14, Li/a;

    move-object v13, v14

    const-string v15, "QR_MASK_PATTERN"

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Li/a;->e:Li/a;

    new-instance v0, Li/a;

    move-object v14, v0

    const-string v15, "QR_COMPACT"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a;->f:Li/a;

    new-instance v0, Li/a;

    move-object v15, v0

    const-string v1, "GS1_FORMAT"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Li/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a;->g:Li/a;

    new-instance v0, Li/a;

    move-object/from16 v16, v0

    const-string v1, "FORCE_CODE_SET"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Li/a;

    move-object/from16 v17, v0

    const-string v1, "FORCE_C40"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Li/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Li/a;

    move-object/from16 v18, v0

    const-string v1, "CODE128_COMPACT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Li/a;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    filled-new-array/range {v0 .. v18}, [Li/a;

    move-result-object v0

    sput-object v0, Li/a;->h:[Li/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a;
    .locals 1

    .line 1
    const-class v0, Li/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a;

    return-object p0
.end method

.method public static values()[Li/a;
    .locals 1

    .line 1
    sget-object v0, Li/a;->h:[Li/a;

    invoke-virtual {v0}, [Li/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a;

    return-object v0
.end method
