.class public final enum Ll/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Ll/b;

.field public static final enum d:Ll/b;

.field public static final enum e:Ll/b;

.field public static final enum f:Ll/b;

.field public static final enum g:Ll/b;

.field public static final enum h:Ll/b;

.field public static final synthetic i:[Ll/b;


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ll/b;

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v3, v1, v2, v1}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    new-instance v2, Ll/b;

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v5, 0xe

    filled-new-array {v3, v4, v5}, [I

    move-result-object v5

    const-string v6, "NUMERIC"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v5, v7}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v2, Ll/b;->c:Ll/b;

    new-instance v5, Ll/b;

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/16 v8, 0xd

    filled-new-array {v6, v7, v8}, [I

    move-result-object v7

    const-string v9, "ALPHANUMERIC"

    const/4 v10, 0x2

    invoke-direct {v5, v9, v10, v7, v10}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v5, Ll/b;->d:Ll/b;

    new-instance v7, Ll/b;

    filled-new-array {v1, v1, v1}, [I

    move-result-object v9

    const-string v10, "STRUCTURED_APPEND"

    const/4 v11, 0x3

    invoke-direct {v7, v10, v11, v9, v11}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    new-instance v9, Ll/b;

    const/16 v10, 0x8

    const/16 v11, 0x10

    filled-new-array {v10, v11, v11}, [I

    move-result-object v11

    const-string v12, "BYTE"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v13}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v9, Ll/b;->e:Ll/b;

    new-instance v11, Ll/b;

    filled-new-array {v1, v1, v1}, [I

    move-result-object v12

    const-string v13, "ECI"

    const/4 v14, 0x5

    const/4 v15, 0x7

    invoke-direct {v11, v13, v14, v12, v15}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v11, Ll/b;->f:Ll/b;

    new-instance v12, Ll/b;

    filled-new-array {v10, v3, v4}, [I

    move-result-object v13

    const-string v8, "KANJI"

    const/4 v3, 0x6

    invoke-direct {v12, v8, v3, v13, v10}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v12, Ll/b;->g:Ll/b;

    new-instance v8, Ll/b;

    const-string v3, "FNC1_FIRST_POSITION"

    filled-new-array {v1, v1, v1}, [I

    move-result-object v13

    invoke-direct {v8, v3, v15, v13, v14}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    sput-object v8, Ll/b;->h:Ll/b;

    new-instance v13, Ll/b;

    const-string v3, "FNC1_SECOND_POSITION"

    filled-new-array {v1, v1, v1}, [I

    move-result-object v1

    invoke-direct {v13, v3, v10, v1, v6}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    new-instance v14, Ll/b;

    const-string v1, "HANZI"

    const/16 v3, 0xa

    filled-new-array {v10, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xd

    invoke-direct {v14, v1, v6, v3, v4}, Ll/b;-><init>(Ljava/lang/String;I[II)V

    move-object v1, v2

    move-object v2, v5

    move-object v3, v7

    move-object v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object v7, v8

    move-object v8, v13

    move-object v9, v14

    filled-new-array/range {v0 .. v9}, [Ll/b;

    move-result-object v0

    sput-object v0, Ll/b;->i:[Ll/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ll/b;->a:[I

    iput p4, p0, Ll/b;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll/b;
    .locals 1

    .line 1
    const-class v0, Ll/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll/b;

    return-object p0
.end method

.method public static values()[Ll/b;
    .locals 1

    .line 1
    sget-object v0, Ll/b;->i:[Ll/b;

    invoke-virtual {v0}, [Ll/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ll/d;)I
    .locals 1

    .line 1
    iget p1, p1, Ll/d;->a:I

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x1a

    .line 10
    .line 11
    if-gt p1, v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x2

    .line 16
    :goto_0
    iget-object v0, p0, Ll/b;->a:[I

    .line 17
    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    return p1
.end method
