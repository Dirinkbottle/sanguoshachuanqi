.class public final Lcom/sgscq/vpn/handler/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[[Lcom/sgscq/vpn/config/h;

.field public static final c:[[Lcom/sgscq/vpn/config/h;

.field public static final d:[I

.field public static final e:[I

.field public static final f:[Lcom/sgscq/vpn/handler/b;

.field public static final g:[Lcom/sgscq/vpn/handler/b;

.field public static final h:[Lcom/sgscq/vpn/handler/b;

.field public static final i:[Lcom/sgscq/vpn/handler/b;

.field public static final j:[Lcom/sgscq/vpn/handler/a;


# instance fields
.field public final a:Lcom/sgscq/vpn/handler/k0;


# direct methods
.method public static constructor <clinit>()V
    .locals 67

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "790212"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v3

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v4, "790211"

    invoke-direct {v0, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v0

    new-instance v5, Lcom/sgscq/vpn/config/h;

    invoke-direct {v5, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v5}, [Lcom/sgscq/vpn/config/h;

    move-result-object v5

    new-instance v6, Lcom/sgscq/vpn/config/h;

    invoke-direct {v6, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v6}, [Lcom/sgscq/vpn/config/h;

    move-result-object v6

    new-instance v7, Lcom/sgscq/vpn/config/h;

    invoke-direct {v7, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/sgscq/vpn/config/h;

    invoke-direct {v1, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v7, v1}, [Lcom/sgscq/vpn/config/h;

    move-result-object v7

    new-instance v1, Lcom/sgscq/vpn/config/h;

    const-string v4, "791465"

    invoke-direct {v1, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1}, [Lcom/sgscq/vpn/config/h;

    move-result-object v8

    new-instance v1, Lcom/sgscq/vpn/config/h;

    invoke-direct {v1, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1}, [Lcom/sgscq/vpn/config/h;

    move-result-object v9

    move-object v4, v0

    filled-new-array/range {v3 .. v9}, [[Lcom/sgscq/vpn/config/h;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/c;->b:[[Lcom/sgscq/vpn/config/h;

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "790204"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v3

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791766"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v4

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791767"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v5

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791768"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v6

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791769"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v7

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791770"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v8

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791771"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v9

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "791475"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v10

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v15, "791476"

    invoke-direct {v0, v15, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v11

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v14, "791477"

    invoke-direct {v0, v14, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v12

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v13, "791478"

    invoke-direct {v0, v13, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v0

    move-object/from16 v59, v13

    move-object v13, v0

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v60, v3

    const-string v3, "791479"

    invoke-direct {v0, v3, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v0

    move-object/from16 v61, v14

    move-object v14, v0

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v62, v4

    const-string v4, "791480"

    invoke-direct {v0, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v0

    move-object/from16 v63, v15

    move-object v15, v0

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v64, v5

    const-string v5, "791481"

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v16

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v65, v6

    const-string v6, "791482"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v17

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791483"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v18

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791484"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v19

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791485"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v20

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791486"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v21

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791487"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v22

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791488"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v23

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791470"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v24

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791471"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v25

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791472"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v26

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v6, "791473"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v27

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v66, v6

    const-string v6, "791474"

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v28

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v29

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v30

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v31

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v6, v63

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v32

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v63, v7

    move-object/from16 v7, v61

    invoke-direct {v0, v7, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v33

    new-instance v0, Lcom/sgscq/vpn/config/h;

    move-object/from16 v61, v8

    move-object/from16 v8, v59

    invoke-direct {v0, v8, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v34

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v3, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v35

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v36

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v37

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v38

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v6, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v39

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v7, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v40

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v8, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v41

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v3, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v42

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v4, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v43

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v44

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v45

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v46

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v47

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v48

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v49

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v50

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v51

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v52

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v53

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v54

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v55

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v56

    new-instance v0, Lcom/sgscq/vpn/config/h;

    invoke-direct {v0, v5, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v57

    new-instance v0, Lcom/sgscq/vpn/config/h;

    const-string v1, "790336"

    invoke-direct {v0, v1, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/sgscq/vpn/config/h;

    move-result-object v58

    move-object/from16 v3, v60

    move-object/from16 v8, v61

    move-object/from16 v4, v62

    move-object/from16 v7, v63

    move-object/from16 v5, v64

    move-object/from16 v6, v65

    move-object/from16 v0, v66

    filled-new-array/range {v3 .. v58}, [[Lcom/sgscq/vpn/config/h;

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/handler/c;->c:[[Lcom/sgscq/vpn/config/h;

    const/16 v1, 0x294

    const/16 v3, 0x3fc

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/handler/c;->d:[I

    const/16 v1, 0x120

    const/16 v3, 0xb48

    const/16 v4, 0x1c

    const/16 v5, 0x22b8

    const/16 v6, 0x70d8

    filled-new-array {v4, v1, v3, v5, v6}, [I

    move-result-object v1

    sput-object v1, Lcom/sgscq/vpn/handler/c;->e:[I

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const-string v4, "790387"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5, v4}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v4, 0xa

    const-string v6, "792720"

    invoke-direct {v3, v4, v5, v6}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v7, 0xf

    invoke-direct {v3, v7, v5, v6}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v7, 0x14

    invoke-direct {v3, v7, v5, v6}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v6, 0x16

    const-string v8, "792721"

    invoke-direct {v3, v6, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v6, 0x18

    invoke-direct {v3, v6, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v6, 0x1a

    invoke-direct {v3, v6, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b

    :goto_0
    const/16 v6, 0x78

    if-gt v3, v6, :cond_5

    const/16 v8, 0x2d

    if-lt v3, v8, :cond_0

    const/16 v8, 0x31

    if-gt v3, v8, :cond_0

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const-string v13, "361001"

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x1

    move-object v8, v6

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v8, 0x32

    if-ne v3, v8, :cond_1

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    invoke-direct {v6, v3, v5, v0}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x5f

    if-ne v3, v8, :cond_2

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const-string v13, "211003"

    const-string v14, "9211003"

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x1

    move-object v8, v6

    move v9, v3

    invoke-direct/range {v8 .. v14}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v8, 0x64

    if-ne v3, v8, :cond_3

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const-string v8, "792723"

    invoke-direct {v6, v3, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v3, v6, :cond_4

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const-string v8, "792710"

    invoke-direct {v6, v3, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const-string v8, "600013"

    invoke-direct {v6, v3, v5, v8}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sgscq/vpn/handler/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sgscq/vpn/handler/b;

    .line 2
    sput-object v0, Lcom/sgscq/vpn/handler/c;->f:[Lcom/sgscq/vpn/handler/b;

    new-instance v0, Lcom/sgscq/vpn/handler/b;

    const/16 v9, 0x15

    const-string v13, "121006"

    const/16 v10, 0x2d

    const/16 v17, 0x6

    const/16 v18, 0x2

    const/4 v11, 0x6

    const/4 v12, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v1, Lcom/sgscq/vpn/handler/b;

    const/16 v20, 0xe

    const-string v24, "121006"

    const/16 v21, 0x3c

    const/4 v12, 0x3

    const/16 v22, 0x6

    const/16 v23, 0x3

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/16 v15, 0x1a

    const-string v19, "121006"

    const/16 v16, 0x4b

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v6, Lcom/sgscq/vpn/handler/b;

    const/16 v9, 0x16

    const-string v13, "121006"

    const/16 v10, 0x5a

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    filled-new-array {v0, v1, v3, v6}, [Lcom/sgscq/vpn/handler/b;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/c;->g:[Lcom/sgscq/vpn/handler/b;

    new-instance v8, Lcom/sgscq/vpn/handler/b;

    const/4 v0, 0x4

    const-string v1, "791759"

    invoke-direct {v8, v5, v0, v1}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v9, Lcom/sgscq/vpn/handler/b;

    const-string v1, "791760"

    invoke-direct {v9, v2, v0, v1}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v10, Lcom/sgscq/vpn/handler/b;

    const-string v1, "791761"

    invoke-direct {v10, v4, v0, v1}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v11, Lcom/sgscq/vpn/handler/b;

    const/16 v1, 0xd

    const-string v2, "791762"

    invoke-direct {v11, v1, v0, v2}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v12, Lcom/sgscq/vpn/handler/b;

    const/16 v1, 0x10

    const-string v2, "791763"

    invoke-direct {v12, v1, v0, v2}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v13, Lcom/sgscq/vpn/handler/b;

    const/16 v1, 0x12

    const-string v2, "791764"

    invoke-direct {v13, v1, v0, v2}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    new-instance v14, Lcom/sgscq/vpn/handler/b;

    const-string v1, "791765"

    invoke-direct {v14, v7, v0, v1}, Lcom/sgscq/vpn/handler/b;-><init>(IILjava/lang/String;)V

    filled-new-array/range {v8 .. v14}, [Lcom/sgscq/vpn/handler/b;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/c;->h:[Lcom/sgscq/vpn/handler/b;

    new-instance v0, Lcom/sgscq/vpn/handler/b;

    const/4 v2, 0x3

    const-string v6, "121006"

    const-string v7, "790363"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sgscq/vpn/handler/b;

    const/4 v9, 0x4

    const-string v13, "121006"

    const/4 v10, 0x6

    const/4 v11, 0x6

    const/4 v12, 0x5

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v3, Lcom/sgscq/vpn/handler/b;

    const/4 v8, 0x5

    const-string v19, "351019"

    const-string v20, "790285"

    const/16 v16, 0x1

    const/16 v17, 0x4

    const/16 v18, 0x5

    const/4 v15, 0x5

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/sgscq/vpn/handler/b;

    const-string v14, "121006"

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/4 v13, 0x5

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v10, Lcom/sgscq/vpn/handler/b;

    const/16 v17, 0x7

    const-string v21, "211003"

    const-string v22, "791675"

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v20, 0x5

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v22}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/sgscq/vpn/handler/b;

    const/16 v24, 0x8

    const-string v28, "221005"

    const-string v29, "791423"

    const/16 v19, 0x1

    const/16 v26, 0x3

    const/16 v27, 0x5

    const/16 v25, 0x1

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/sgscq/vpn/handler/b;

    const/16 v5, 0x9

    const-string v9, "121006"

    const/16 v6, 0xe

    const/4 v7, 0x6

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;)V

    new-instance v8, Lcom/sgscq/vpn/handler/b;

    const/16 v17, 0xa

    const-string v21, "121008"

    const-string v22, "790365"

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lcom/sgscq/vpn/handler/b;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v15

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    filled-new-array/range {v1 .. v8}, [Lcom/sgscq/vpn/handler/b;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/c;->i:[Lcom/sgscq/vpn/handler/b;

    new-instance v0, Lcom/sgscq/vpn/handler/a;

    invoke-direct {v0}, Lcom/sgscq/vpn/handler/a;-><init>()V

    filled-new-array {v0}, [Lcom/sgscq/vpn/handler/a;

    move-result-object v0

    sput-object v0, Lcom/sgscq/vpn/handler/c;->j:[Lcom/sgscq/vpn/handler/a;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/handler/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    return-void
.end method

.method public static A(IILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "item_id"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pk_id"

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "level"

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3, p2, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "item_num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_new"

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static B(Ljava/util/Map;)I
    .locals 6

    .line 1
    const-string v0, "activity_continuous_signin_days"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v2, v1, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static C(Ljava/util/Map;)I
    .locals 5

    .line 1
    const-string v0, "activity_cumulative_login_days"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x38

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    :goto_0
    if-gt v1, v0, :cond_1

    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "activity_received_cumulative_login_day_"

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    return v1

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, -0x1

    .line 51
    return p0
.end method

.method public static D(Ljava/util/Map;)I
    .locals 6

    .line 1
    const-string v0, "activity_daily_check_days"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v2, v1, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v1

    :goto_2
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static E(JLjava/util/Map;)I
    .locals 7

    .line 1
    const-string v0, "user_register_time"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/sgscq/vpn/handler/c;->U(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v2, 0x0

    if-lez p2, :cond_3

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long p2, v0, v3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    cmp-long p2, p0, v0

    if-gez p2, :cond_1

    return v2

    :cond_1
    const-wide/32 v5, 0x5265c00

    add-long/2addr v0, v5

    cmp-long p2, p0, v0

    if-ltz p2, :cond_2

    return v2

    :cond_2
    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e7

    add-long/2addr v0, p0

    div-long/2addr v0, v3

    const-wide/32 p0, 0x15180

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method public static F(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "type"

    .line 28
    .line 29
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v4, "item_id"

    .line 38
    .line 39
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v5, ""

    .line 52
    .line 53
    const-string v6, "style_desc"

    .line 54
    .line 55
    const-string v7, "style_name"

    .line 56
    .line 57
    filled-new-array {v6, v4, v7, v5}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "style_id"

    .line 62
    .line 63
    invoke-static {v5, v3, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-array v2, v2, [Ljava/util/Map;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    aput-object v1, v2, v4

    .line 71
    .line 72
    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "data"

    .line 81
    .line 82
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "style"

    .line 87
    .line 88
    invoke-static {v2, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    return-object v0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "null"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static H(JLjava/util/Map;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v2, "level_general"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/16 v4, 0x9

    .line 10
    .line 11
    const v5, 0x15180

    .line 12
    .line 13
    .line 14
    sget-object v6, Lcom/sgscq/vpn/handler/c;->f:[Lcom/sgscq/vpn/handler/b;

    .line 15
    .line 16
    move-object v1, p2

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/c;->E(JLjava/util/Map;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    const-string v3, "finish_dungeon"

    .line 31
    .line 32
    const/16 v4, 0x81

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    sget-object v7, Lcom/sgscq/vpn/handler/c;->g:[Lcom/sgscq/vpn/handler/b;

    .line 37
    .line 38
    move-object v2, p2

    .line 39
    move v6, v1

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const-string v3, "collect_god"

    .line 48
    .line 49
    const/16 v4, 0x9

    .line 50
    .line 51
    const/16 v5, 0xb

    .line 52
    .line 53
    sget-object v7, Lcom/sgscq/vpn/handler/c;->h:[Lcom/sgscq/vpn/handler/b;

    .line 54
    .line 55
    move-object v2, p2

    .line 56
    move v6, v1

    .line 57
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/c;->Q(JLjava/util/Map;)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-lez v6, :cond_1

    .line 69
    .line 70
    const-string v3, "opening_recharge_gifts"

    .line 71
    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    const/16 v5, 0xc

    .line 75
    .line 76
    sget-object v7, Lcom/sgscq/vpn/handler/c;->i:[Lcom/sgscq/vpn/handler/b;

    .line 77
    .line 78
    move-object v2, p2

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    return-object v0
.end method

.method public static I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    new-instance v5, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v6, v4

    .line 14
    :goto_0
    if-ge v4, v2, :cond_2

    .line 15
    .line 16
    aget-object v7, v1, v4

    .line 17
    .line 18
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    iget v9, v7, Lcom/sgscq/vpn/handler/b;->a:I

    .line 21
    .line 22
    move-object/from16 v15, p1

    .line 23
    .line 24
    invoke-static {v15, v9}, Lcom/sgscq/vpn/handler/c;->K(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v9, 0x1

    .line 37
    iget v10, v7, Lcom/sgscq/vpn/handler/b;->a:I

    .line 38
    .line 39
    if-nez v8, :cond_0

    .line 40
    .line 41
    iget v11, v7, Lcom/sgscq/vpn/handler/b;->f:I

    .line 42
    .line 43
    invoke-static {v11, v0}, Lcom/sgscq/vpn/handler/c;->J(ILjava/util/Map;)I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    if-lt v11, v10, :cond_0

    .line 48
    .line 49
    move v6, v9

    .line 50
    :cond_0
    iget-object v11, v7, Lcom/sgscq/vpn/handler/b;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget v12, v7, Lcom/sgscq/vpn/handler/b;->e:I

    .line 53
    .line 54
    invoke-static {v11, v12}, Lcom/sgscq/vpn/handler/c;->j(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    const-string v16, "id"

    .line 59
    .line 60
    const-string v18, "item_id"

    .line 61
    .line 62
    const-string v20, "num"

    .line 63
    .line 64
    iget v7, v7, Lcom/sgscq/vpn/handler/b;->d:I

    .line 65
    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v21

    .line 70
    const-string v22, "item_num"

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v23

    .line 76
    const-string v24, "type"

    .line 77
    .line 78
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v25

    .line 82
    const-string v26, "item_type"

    .line 83
    .line 84
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v27

    .line 88
    move-object/from16 v17, v11

    .line 89
    .line 90
    move-object/from16 v19, v11

    .line 91
    .line 92
    filled-new-array/range {v16 .. v27}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const-string v12, "pk_id"

    .line 97
    .line 98
    invoke-static {v12, v11, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const/16 v11, 0x81

    .line 103
    .line 104
    move/from16 v12, p2

    .line 105
    .line 106
    if-ne v12, v11, :cond_1

    .line 107
    .line 108
    new-array v9, v9, [Ljava/util/Map;

    .line 109
    .line 110
    aput-object v7, v9, v3

    .line 111
    .line 112
    invoke-static {v9}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-static {v7}, Lcom/sgscq/vpn/handler/c;->F(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const-string v10, "is_received"

    .line 125
    .line 126
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    filled-new-array {v10, v8}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    const-string v10, "condition"

    .line 135
    .line 136
    invoke-static {v10, v9, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    const-string v9, "status"

    .line 141
    .line 142
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    const-string v9, "object"

    .line 147
    .line 148
    invoke-static {v9, v7, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_2
    move-object/from16 v15, p1

    .line 160
    .line 161
    move/from16 v12, p2

    .line 162
    .line 163
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    const-string v0, "type"

    .line 168
    .line 169
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "can_receive"

    .line 174
    .line 175
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const-string v4, "instance_id"

    .line 180
    .line 181
    const-string v6, "instance_bg"

    .line 182
    .line 183
    const-string v7, "new"

    .line 184
    .line 185
    const-string v8, "home_sort"

    .line 186
    .line 187
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v10, "left_time"

    .line 192
    .line 193
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    const-string v12, "instance_countdown"

    .line 198
    .line 199
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    const-string v16, "instance_interval"

    .line 204
    .line 205
    move-object/from16 v28, v14

    .line 206
    .line 207
    move-object/from16 v14, v16

    .line 208
    .line 209
    const v16, 0x15180

    .line 210
    .line 211
    .line 212
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v16

    .line 216
    move-object/from16 v15, v16

    .line 217
    .line 218
    const-string v16, "reward_list"

    .line 219
    .line 220
    move-object/from16 v17, v5

    .line 221
    .line 222
    move-object/from16 v5, p1

    .line 223
    .line 224
    filled-new-array/range {v0 .. v17}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v1, "activity_type"

    .line 229
    .line 230
    move-object/from16 v2, v28

    .line 231
    .line 232
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0
.end method

.method public static J(ILjava/util/Map;)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "user_level"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne p0, v1, :cond_3

    .line 24
    .line 25
    const-string p0, "user_map_step"

    .line 26
    .line 27
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, p0

    .line 35
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "500"

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x6

    .line 56
    if-lt p1, v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_3
    const/4 v1, 0x5

    .line 68
    if-ne p0, v3, :cond_6

    .line 69
    .line 70
    const-string p0, "user_elite_map_step"

    .line 71
    .line 72
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-nez p0, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move-object v2, p0

    .line 80
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "105"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-lt p1, v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :cond_5
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6
    const/4 v3, 0x4

    .line 112
    const/4 v4, 0x0

    .line 113
    if-ne p0, v3, :cond_b

    .line 114
    .line 115
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 116
    .line 117
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v3, "General"

    .line 126
    .line 127
    invoke-static {v3, p1}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_a

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/util/Map;

    .line 146
    .line 147
    const-string v5, "generalId"

    .line 148
    .line 149
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    const-string v6, "id"

    .line 154
    .line 155
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const-string v6, "general_id"

    .line 160
    .line 161
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_7

    .line 178
    .line 179
    const-string v5, "0"

    .line 180
    .line 181
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_8

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_8
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-nez v5, :cond_9

    .line 193
    .line 194
    move v5, v4

    .line 195
    goto :goto_3

    .line 196
    :cond_9
    const-string v6, "grade"

    .line 197
    .line 198
    invoke-static {v5, v6, v4}, Lc/a;->e(Ljava/util/Map;Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    :goto_3
    if-ne v5, v0, :cond_7

    .line 203
    .line 204
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :cond_b
    if-ne p0, v1, :cond_c

    .line 214
    .line 215
    const-string p0, "user_vip_level"

    .line 216
    .line 217
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    const-string v0, "vip_level"

    .line 226
    .line 227
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const-string v1, "vipLevel"

    .line 236
    .line 237
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    return p0

    .line 254
    :cond_c
    return v4
.end method

.method public static K(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_received_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "month_signin"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "activity_received_instance_"

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "daily_check"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string v0, "_"

    .line 27
    .line 28
    invoke-static {v1, p0, v0}, La/b0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static M(Ljava/util/Map;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity_continuous_signin_last_day"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "activity_continuous_signin_days"

    .line 18
    .line 19
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x7

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    if-eqz v5, :cond_6

    .line 35
    .line 36
    if-ge v4, v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v2, v8

    .line 40
    :goto_0
    if-gt v2, v6, :cond_2

    .line 41
    .line 42
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "activity_cumulative_login_days"

    .line 63
    .line 64
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-le v2, v6, :cond_3

    .line 73
    .line 74
    sub-int/2addr v2, v8

    .line 75
    rem-int/2addr v2, v6

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    move v7, v8

    .line 79
    :cond_3
    :goto_1
    if-eqz v7, :cond_5

    .line 80
    .line 81
    move v2, v8

    .line 82
    :goto_2
    if-gt v2, v6, :cond_4

    .line 83
    .line 84
    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void

    .line 105
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    invoke-static {v2, v0}, Lcom/sgscq/vpn/handler/c;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    const-wide/16 v11, 0x1

    .line 117
    .line 118
    cmp-long v2, v9, v11

    .line 119
    .line 120
    if-nez v2, :cond_8

    .line 121
    .line 122
    if-lt v4, v6, :cond_9

    .line 123
    .line 124
    :cond_8
    move v7, v8

    .line 125
    :cond_9
    if-eqz v7, :cond_a

    .line 126
    .line 127
    move v2, v8

    .line 128
    goto :goto_3

    .line 129
    :cond_a
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    add-int/2addr v2, v8

    .line 134
    :goto_3
    if-eqz v7, :cond_b

    .line 135
    .line 136
    :goto_4
    if-gt v8, v6, :cond_b

    .line 137
    .line 138
    invoke-static {v8}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_b
    move v8, v2

    .line 149
    :goto_5
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public static N(Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "activity_cumulative_login_last_day"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {p0, v1, v2, v0}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v2, "activity_cumulative_login_days"

    .line 17
    .line 18
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    add-int/2addr v3, v0

    .line 31
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static O(Ljava/util/Map;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x7

    .line 5
    if-gt v1, v3, :cond_1

    .line 6
    .line 7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    const-string v4, "activity_daily_check_days"

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->m(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move v5, v2

    .line 39
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-ge v5, v6, :cond_3

    .line 44
    .line 45
    if-ge v5, v3, :cond_3

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v5, "activity_daily_check_last_day"

    .line 85
    .line 86
    const-string v6, ""

    .line 87
    .line 88
    invoke-interface {p0, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v8}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_9

    .line 109
    .line 110
    if-lt v8, v3, :cond_8

    .line 111
    .line 112
    move v7, v0

    .line 113
    :goto_4
    if-gt v7, v3, :cond_6

    .line 114
    .line 115
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-static {v7}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-nez v8, :cond_5

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    move v2, v0

    .line 136
    :goto_5
    if-eqz v2, :cond_8

    .line 137
    .line 138
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->m(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    add-int/lit8 v3, v3, -0x1

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object v6, v2

    .line 160
    check-cast v6, Ljava/lang/String;

    .line 161
    .line 162
    :goto_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_8

    .line 167
    .line 168
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->h(Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_8
    return-void

    .line 182
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    const-wide/16 v10, 0x1

    .line 187
    .line 188
    if-eqz v9, :cond_f

    .line 189
    .line 190
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->m(Ljava/util/Map;)Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_a

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    add-int/lit8 v6, v6, -0x1

    .line 206
    .line 207
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Ljava/lang/String;

    .line 212
    .line 213
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_b

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_b
    invoke-static {v6, v1}, Lcom/sgscq/vpn/handler/c;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 221
    .line 222
    .line 223
    move-result-wide v6

    .line 224
    cmp-long v9, v6, v10

    .line 225
    .line 226
    if-gtz v9, :cond_c

    .line 227
    .line 228
    if-nez v9, :cond_d

    .line 229
    .line 230
    if-lt v8, v3, :cond_d

    .line 231
    .line 232
    :cond_c
    move v2, v0

    .line 233
    :cond_d
    const-wide/16 v9, 0x0

    .line 234
    .line 235
    cmp-long v3, v6, v9

    .line 236
    .line 237
    if-nez v3, :cond_e

    .line 238
    .line 239
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    goto :goto_8

    .line 244
    :cond_e
    if-eqz v2, :cond_12

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_f
    invoke-static {v7, v1}, Lcom/sgscq/vpn/handler/c;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v6

    .line 251
    cmp-long v6, v6, v10

    .line 252
    .line 253
    if-nez v6, :cond_10

    .line 254
    .line 255
    if-lt v8, v3, :cond_11

    .line 256
    .line 257
    :cond_10
    move v2, v0

    .line 258
    :cond_11
    if-eqz v2, :cond_12

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_12
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    add-int/2addr v0, v3

    .line 266
    :goto_8
    if-eqz v2, :cond_13

    .line 267
    .line 268
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->h(Ljava/util/Map;)V

    .line 269
    .line 270
    .line 271
    :cond_13
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public static P(Ljava/util/Map;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->O(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->M(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->N(Ljava/util/Map;)V

    invoke-interface {v0, p0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static Q(JLjava/util/Map;)I
    .locals 7

    .line 1
    const-string v0, "user_register_time"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/sgscq/vpn/handler/c;->U(Ljava/lang/Object;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p2, v0, v2

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez p2, :cond_3

    .line 17
    .line 18
    const-wide v3, 0x20c49ba5e353f7L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long p2, v0, v3

    .line 24
    .line 25
    if-lez p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/16 v3, 0x3e8

    .line 29
    .line 30
    mul-long/2addr v0, v3

    .line 31
    cmp-long p2, p0, v0

    .line 32
    .line 33
    if-gez p2, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    invoke-static {v0, v1}, Lcom/sgscq/vpn/handler/c;->V(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-string p2, "GMT+08:00"

    .line 41
    .line 42
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-static {p2, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x5

    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-virtual {p2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    cmp-long p2, v5, v0

    .line 65
    .line 66
    if-lez p2, :cond_3

    .line 67
    .line 68
    cmp-long p2, p0, v5

    .line 69
    .line 70
    if-ltz p2, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sub-long/2addr v5, p0

    .line 74
    const-wide/16 p0, 0x3e7

    .line 75
    .line 76
    add-long/2addr v5, p0

    .line 77
    div-long/2addr v5, v3

    .line 78
    const-wide/32 p0, 0x15180

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    long-to-int p0, p0

    .line 86
    return p0

    .line 87
    :cond_3
    :goto_0
    return v2
.end method

.method public static R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "equipment_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "skill_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "general_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "pk_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static S(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/Map;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "type"

    .line 28
    .line 29
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const-string v6, "item_id"

    .line 38
    .line 39
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v8, "id"

    .line 44
    .line 45
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "item_type"

    .line 54
    .line 55
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-static {v9}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const/16 v11, 0x8

    .line 64
    .line 65
    const/16 v12, 0xf

    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    if-eq v9, v12, :cond_1

    .line 69
    .line 70
    if-ne v4, v11, :cond_0

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    const-string v14, "92"

    .line 77
    .line 78
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    if-eqz v12, :cond_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    move v12, v13

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :goto_1
    move v12, v3

    .line 88
    :goto_2
    const/4 v14, 0x7

    .line 89
    if-eqz v12, :cond_2

    .line 90
    .line 91
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-ne v11, v14, :cond_3

    .line 100
    .line 101
    const-string v11, "9"

    .line 102
    .line 103
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_3

    .line 108
    .line 109
    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    move-object v15, v7

    .line 115
    :cond_3
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const/16 v14, 0xe

    .line 120
    .line 121
    new-array v14, v14, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v8, v14, v13

    .line 124
    .line 125
    aput-object v15, v14, v3

    .line 126
    .line 127
    const/4 v8, 0x2

    .line 128
    aput-object v10, v14, v8

    .line 129
    .line 130
    if-eqz v12, :cond_4

    .line 131
    .line 132
    move v4, v9

    .line 133
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const/4 v8, 0x3

    .line 138
    aput-object v4, v14, v8

    .line 139
    .line 140
    const/4 v4, 0x4

    .line 141
    aput-object v6, v14, v4

    .line 142
    .line 143
    const/4 v4, 0x5

    .line 144
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    aput-object v6, v14, v4

    .line 149
    .line 150
    const/4 v4, 0x6

    .line 151
    const-string v6, "pk_id"

    .line 152
    .line 153
    aput-object v6, v14, v4

    .line 154
    .line 155
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    const/4 v6, 0x7

    .line 160
    aput-object v4, v14, v6

    .line 161
    .line 162
    const-string v4, "level"

    .line 163
    .line 164
    const/16 v6, 0x8

    .line 165
    .line 166
    aput-object v4, v14, v6

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const/16 v4, 0x9

    .line 177
    .line 178
    aput-object v3, v14, v4

    .line 179
    .line 180
    const/16 v3, 0xa

    .line 181
    .line 182
    const-string v4, "num"

    .line 183
    .line 184
    aput-object v4, v14, v3

    .line 185
    .line 186
    const/16 v3, 0xb

    .line 187
    .line 188
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    aput-object v4, v14, v3

    .line 193
    .line 194
    const/16 v3, 0xc

    .line 195
    .line 196
    const-string v4, "item_num"

    .line 197
    .line 198
    aput-object v4, v14, v3

    .line 199
    .line 200
    const/16 v3, 0xd

    .line 201
    .line 202
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    aput-object v2, v14, v3

    .line 207
    .line 208
    invoke-static {v5, v11, v14}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_5
    return-object v0
.end method

.method public static T(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const-string p0, "0"

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static U(Ljava/lang/Object;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez p0, :cond_1

    :try_start_0
    const-string p0, "0"

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static V(J)J
    .locals 2

    .line 1
    const-string v0, "GMT+08:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static W()Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ret"

    const-string v3, "code"

    const-string v5, "result"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "msg"

    const-string v8, "success"

    move-object v2, v0

    move-object v4, v0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 10

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "GeneralSoul"

    .line 5
    .line 6
    invoke-static {v0, p2}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    const-string v1, "general_id"

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const-string v2, "id"

    .line 36
    .line 37
    const-string v4, "general_id"

    .line 38
    .line 39
    const-string v6, "num"

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "card_type"

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    move-object v3, p1

    .line 53
    move-object v5, p1

    .line 54
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p2, "pk_id"

    .line 59
    .line 60
    invoke-static {p2, p1, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public static b(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 21

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p1

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    invoke-static {v7, v8}, Lcom/sgscq/vpn/handler/c;->j(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    const-string v11, "Item"

    .line 14
    .line 15
    invoke-static {v11, v9}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v13, "add"

    .line 28
    .line 29
    const-string v14, "upd"

    .line 30
    .line 31
    const-string v15, "del"

    .line 32
    .line 33
    const-string v6, "type"

    .line 34
    .line 35
    const-string v5, "item_type"

    .line 36
    .line 37
    const-string v4, "total_num"

    .line 38
    .line 39
    const-string v3, "item_num"

    .line 40
    .line 41
    const-string v8, "num"

    .line 42
    .line 43
    const-string v9, "item_id"

    .line 44
    .line 45
    move-object/from16 v16, v11

    .line 46
    .line 47
    const-string v11, "id"

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/Map;

    .line 56
    .line 57
    move-object/from16 v17, v1

    .line 58
    .line 59
    const-string v1, ""

    .line 60
    .line 61
    invoke-static {v2, v11, v1, v9, v7}, Lc/a;->C(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    move/from16 v8, p1

    .line 68
    .line 69
    move-object/from16 v9, p3

    .line 70
    .line 71
    move-object/from16 v11, v16

    .line 72
    .line 73
    move-object/from16 v1, v17

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->x(Ljava/util/Map;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v7, 0x1

    .line 81
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v0, v1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    filled-new-array {v14, v1, v13, v12}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v15, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object/from16 v9, p3

    .line 140
    .line 141
    move-object/from16 v1, v16

    .line 142
    .line 143
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    :cond_1
    move-object v2, v9

    .line 148
    move-object/from16 v1, v16

    .line 149
    .line 150
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 151
    .line 152
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v16, "pk_id"

    .line 156
    .line 157
    move-object/from16 v17, v1

    .line 158
    .line 159
    move-object/from16 v18, v15

    .line 160
    .line 161
    move-object v15, v2

    .line 162
    move-object/from16 v2, p3

    .line 163
    .line 164
    move-object/from16 v19, v13

    .line 165
    .line 166
    move-object v13, v3

    .line 167
    move-object v3, v9

    .line 168
    move-object/from16 v20, v14

    .line 169
    .line 170
    move-object v14, v4

    .line 171
    move-object/from16 v4, v16

    .line 172
    .line 173
    move-object/from16 v16, v12

    .line 174
    .line 175
    move-object v12, v5

    .line 176
    move-object v5, v11

    .line 177
    move-object v11, v6

    .line 178
    move-object/from16 v6, p2

    .line 179
    .line 180
    invoke-static/range {v1 .. v6}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v9, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const/4 v1, 0x1

    .line 187
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-interface {v9, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-interface {v9, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v0, "is_new"

    .line 235
    .line 236
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-object/from16 v0, v16

    .line 242
    .line 243
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    new-instance v1, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v2, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    move-object/from16 v3, v19

    .line 257
    .line 258
    move-object/from16 v4, v20

    .line 259
    .line 260
    filled-new-array {v4, v2, v3, v0}, [Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object/from16 v2, v18

    .line 265
    .line 266
    invoke-static {v2, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    move-object/from16 v1, p3

    .line 271
    .line 272
    move-object v3, v9

    .line 273
    move-object/from16 v2, v17

    .line 274
    .line 275
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    return-object v3
.end method

.method public static c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "upd"

    const-string v3, "add"

    filled-new-array {v2, p2, v3, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "del"

    invoke-static {v1, v0, p2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static d(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .line 1
    const-string v0, "push"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    check-cast v1, Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-static {v4, v5, p1}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/util/Map;

    .line 57
    .line 58
    const-string v5, "activity_type"

    .line 59
    .line 60
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/16 v6, 0x81

    .line 69
    .line 70
    if-ne v5, v6, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string v3, "party"

    .line 78
    .line 79
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    sget-boolean v1, Lcom/sgscq/vpn/c7;->i:Z

    .line 87
    .line 88
    invoke-static {p1, v3, v4, v1}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    return-object p0
.end method

.method public static e(JLjava/util/Map;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/sgscq/vpn/c7;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/c;->H(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/sgscq/vpn/handler/c;->P(Ljava/util/Map;)Z

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p2, v1}, Lcom/sgscq/vpn/handler/c;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/sgscq/vpn/handler/c;->l(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/sgscq/vpn/handler/c;->H(JLjava/util/Map;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public static g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/sgscq/vpn/handler/c;->z(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "gamble"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lcom/sgscq/vpn/handler/c;->s(Ljava/util/Map;JZ)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "timing_power"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static h(Ljava/util/Map;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "activity_received_instance_daily_check_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "cmn_modules"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static j(Ljava/lang/String;I)I
    .locals 2

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v1, "item_type"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    const-string v0, "791490"

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const-string v0, "791491"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "71"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    const-string v0, "72"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const-string v0, "79"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    :cond_3
    move v0, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 79
    :goto_1
    if-eqz v0, :cond_5

    .line 80
    .line 81
    return v1

    .line 82
    :cond_5
    const-string v0, "92"

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    const/16 p0, 0xf

    .line 91
    .line 92
    return p0

    .line 93
    :cond_6
    :goto_2
    return p1
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "activity_received_continuous_signin_day_"

    .line 2
    .line 3
    invoke-static {v0, p0}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static l(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 25

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/c;->M(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x7

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    move-object/from16 v6, p0

    .line 23
    .line 24
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    sget-object v5, Lcom/sgscq/vpn/handler/c;->b:[[Lcom/sgscq/vpn/config/h;

    .line 33
    .line 34
    aget-object v2, v5, v2

    .line 35
    .line 36
    new-instance v5, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    array-length v7, v2

    .line 42
    move v8, v1

    .line 43
    :goto_1
    if-ge v8, v7, :cond_0

    .line 44
    .line 45
    aget-object v9, v2, v8

    .line 46
    .line 47
    iget-object v10, v9, Lcom/sgscq/vpn/config/h;->b:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast v10, Ljava/lang/String;

    .line 50
    .line 51
    iget v11, v9, Lcom/sgscq/vpn/config/h;->d:I

    .line 52
    .line 53
    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/c;->j(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    iget-object v12, v9, Lcom/sgscq/vpn/config/h;->b:Ljava/io/Serializable;

    .line 58
    .line 59
    check-cast v12, Ljava/lang/String;

    .line 60
    .line 61
    const-string v13, "id"

    .line 62
    .line 63
    const-string v15, "item_id"

    .line 64
    .line 65
    const-string v17, "num"

    .line 66
    .line 67
    iget v9, v9, Lcom/sgscq/vpn/config/h;->c:I

    .line 68
    .line 69
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v18

    .line 73
    const-string v19, "item_num"

    .line 74
    .line 75
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v20

    .line 79
    const-string v21, "type"

    .line 80
    .line 81
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v22

    .line 85
    const-string v23, "item_type"

    .line 86
    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v24

    .line 91
    move-object v14, v12

    .line 92
    move-object/from16 v16, v12

    .line 93
    .line 94
    filled-new-array/range {v13 .. v24}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const-string v10, "pk_id"

    .line 99
    .line 100
    invoke-static {v10, v12, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v8, v8, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_0
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->F(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string v7, "is_received"

    .line 119
    .line 120
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string v7, "condition"

    .line 129
    .line 130
    invoke-static {v7, v5, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const-string v5, "status"

    .line 135
    .line 136
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    const-string v5, "object"

    .line 141
    .line 142
    invoke-static {v5, v2, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move v2, v3

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_1
    move-object/from16 v6, p0

    .line 153
    .line 154
    const/16 v2, 0x67

    .line 155
    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const/16 v5, 0x12

    .line 161
    .line 162
    new-array v5, v5, [Ljava/lang/Object;

    .line 163
    .line 164
    const-string v7, "type"

    .line 165
    .line 166
    aput-object v7, v5, v1

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    const/4 v7, 0x1

    .line 173
    aput-object v2, v5, v7

    .line 174
    .line 175
    const/4 v2, 0x2

    .line 176
    const-string v8, "can_receive"

    .line 177
    .line 178
    aput-object v8, v5, v2

    .line 179
    .line 180
    invoke-static/range {p0 .. p0}, Lcom/sgscq/vpn/handler/c;->B(Ljava/util/Map;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-lez v2, :cond_2

    .line 185
    .line 186
    move v1, v7

    .line 187
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const/4 v2, 0x3

    .line 192
    aput-object v1, v5, v2

    .line 193
    .line 194
    const/4 v1, 0x4

    .line 195
    const-string v2, "instance_id"

    .line 196
    .line 197
    aput-object v2, v5, v1

    .line 198
    .line 199
    const/4 v1, 0x5

    .line 200
    const-string v2, "continuous_signin"

    .line 201
    .line 202
    aput-object v2, v5, v1

    .line 203
    .line 204
    const/4 v1, 0x6

    .line 205
    const-string v2, "instance_bg"

    .line 206
    .line 207
    aput-object v2, v5, v1

    .line 208
    .line 209
    const-string v1, "new"

    .line 210
    .line 211
    aput-object v1, v5, v3

    .line 212
    .line 213
    const/16 v1, 0x8

    .line 214
    .line 215
    const-string v2, "home_sort"

    .line 216
    .line 217
    aput-object v2, v5, v1

    .line 218
    .line 219
    const/16 v1, 0x9

    .line 220
    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    aput-object v2, v5, v1

    .line 226
    .line 227
    const/16 v1, 0xa

    .line 228
    .line 229
    const-string v2, "left_time"

    .line 230
    .line 231
    aput-object v2, v5, v1

    .line 232
    .line 233
    const v1, 0x15180

    .line 234
    .line 235
    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const/16 v3, 0xb

    .line 241
    .line 242
    aput-object v2, v5, v3

    .line 243
    .line 244
    const/16 v2, 0xc

    .line 245
    .line 246
    const-string v3, "instance_countdown"

    .line 247
    .line 248
    aput-object v3, v5, v2

    .line 249
    .line 250
    const/16 v2, 0xd

    .line 251
    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    aput-object v3, v5, v2

    .line 257
    .line 258
    const/16 v2, 0xe

    .line 259
    .line 260
    const-string v3, "instance_interval"

    .line 261
    .line 262
    aput-object v3, v5, v2

    .line 263
    .line 264
    const/16 v2, 0xf

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    aput-object v1, v5, v2

    .line 271
    .line 272
    const/16 v1, 0x10

    .line 273
    .line 274
    const-string v2, "reward_list"

    .line 275
    .line 276
    aput-object v2, v5, v1

    .line 277
    .line 278
    const/16 v1, 0x11

    .line 279
    .line 280
    aput-object v0, v5, v1

    .line 281
    .line 282
    const-string v0, "activity_type"

    .line 283
    .line 284
    invoke-static {v0, v4, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    return-object v0
.end method

.method public static m(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "activity_received_instance_daily_check_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static n(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "activity_received_daily_check_day_"

    .line 2
    .line 3
    invoke-static {v0, p0}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->O(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    const/4 v13, 0x5

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "791661"

    .line 14
    .line 15
    invoke-static {p1, v13}, Lcom/sgscq/vpn/handler/c;->j(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "id"

    .line 20
    .line 21
    const-string v3, "item_id"

    .line 22
    .line 23
    const-string v5, "num"

    .line 24
    .line 25
    const-string v7, "item_num"

    .line 26
    .line 27
    const-string v9, "type"

    .line 28
    .line 29
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    const-string v11, "item_type"

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    move-object v1, v2

    .line 40
    move-object v2, p1

    .line 41
    move-object v4, p1

    .line 42
    move-object v6, v8

    .line 43
    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "pk_id"

    .line 48
    .line 49
    invoke-static {v2, p1, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    const/16 v1, 0x75

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/16 v3, 0x12

    .line 60
    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v4, "type"

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    aput-object v4, v3, v5

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aput-object v1, v3, v0

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    const-string v4, "can_receive"

    .line 76
    .line 77
    aput-object v4, v3, v1

    .line 78
    .line 79
    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->D(Ljava/util/Map;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_1

    .line 84
    .line 85
    move v1, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v1, v5

    .line 88
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/4 v4, 0x3

    .line 93
    aput-object v1, v3, v4

    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    const-string v4, "instance_id"

    .line 97
    .line 98
    aput-object v4, v3, v1

    .line 99
    .line 100
    const-string v1, "daily_check"

    .line 101
    .line 102
    aput-object v1, v3, v13

    .line 103
    .line 104
    const/4 v1, 0x6

    .line 105
    const-string v4, "instance_bg"

    .line 106
    .line 107
    aput-object v4, v3, v1

    .line 108
    .line 109
    const/4 v4, 0x7

    .line 110
    const-string v6, "meiriqiandao2"

    .line 111
    .line 112
    aput-object v6, v3, v4

    .line 113
    .line 114
    const/16 v6, 0x8

    .line 115
    .line 116
    const-string v7, "home_sort"

    .line 117
    .line 118
    aput-object v7, v3, v6

    .line 119
    .line 120
    const/16 v6, 0x9

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    aput-object v1, v3, v6

    .line 127
    .line 128
    const/16 v1, 0xa

    .line 129
    .line 130
    const-string v6, "left_time"

    .line 131
    .line 132
    aput-object v6, v3, v1

    .line 133
    .line 134
    const v1, 0x15180

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const/16 v7, 0xb

    .line 142
    .line 143
    aput-object v6, v3, v7

    .line 144
    .line 145
    const/16 v6, 0xc

    .line 146
    .line 147
    const-string v7, "instance_countdown"

    .line 148
    .line 149
    aput-object v7, v3, v6

    .line 150
    .line 151
    const/16 v6, 0xd

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    aput-object v7, v3, v6

    .line 158
    .line 159
    const/16 v6, 0xe

    .line 160
    .line 161
    const-string v7, "instance_interval"

    .line 162
    .line 163
    aput-object v7, v3, v6

    .line 164
    .line 165
    const/16 v6, 0xf

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    aput-object v1, v3, v6

    .line 172
    .line 173
    const/16 v1, 0x10

    .line 174
    .line 175
    const-string v6, "reward_list"

    .line 176
    .line 177
    aput-object v6, v3, v1

    .line 178
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    move v6, v0

    .line 185
    :goto_2
    if-gt v6, v4, :cond_2

    .line 186
    .line 187
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    new-array v8, v0, [Ljava/util/Map;

    .line 202
    .line 203
    aput-object p1, v8, v5

    .line 204
    .line 205
    invoke-static {v8}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v8}, Lcom/sgscq/vpn/handler/c;->F(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    const-string v10, "is_received"

    .line 218
    .line 219
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    filled-new-array {v10, v7}, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    const-string v10, "condition"

    .line 228
    .line 229
    invoke-static {v10, v9, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    const-string v9, "status"

    .line 234
    .line 235
    filled-new-array {v9, v7}, [Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    const-string v9, "object"

    .line 240
    .line 241
    invoke-static {v9, v8, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    add-int/lit8 v6, v6, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_2
    const/16 p0, 0x11

    .line 252
    .line 253
    aput-object v1, v3, p0

    .line 254
    .line 255
    const-string p0, "activity_type"

    .line 256
    .line 257
    invoke-static {p0, v2, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT+08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public static q(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    const-string v0, "delta_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static r(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ret"

    const-string v3, "code"

    const-string v5, "result"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "msg"

    move-object v2, v0

    move-object v4, v0

    move-object v8, p0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "error_code"

    invoke-static {v1, v0, p0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/Map;JZ)Ljava/util/ArrayList;
    .locals 19

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/handler/c;->V(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    const/4 v5, 0x2

    .line 13
    if-ge v4, v5, :cond_4

    .line 14
    .line 15
    sget-object v5, Lcom/sgscq/vpn/handler/c;->d:[I

    .line 16
    .line 17
    aget v5, v5, v4

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    const-wide/32 v7, 0xea60

    .line 21
    .line 22
    .line 23
    mul-long/2addr v5, v7

    .line 24
    add-long/2addr v5, v1

    .line 25
    const-wide/32 v7, 0x6ddd00

    .line 26
    .line 27
    .line 28
    add-long/2addr v7, v5

    .line 29
    cmp-long v9, p1, v5

    .line 30
    .line 31
    const-wide v10, 0x40ed4c0000000000L    # 60000.0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/16 v12, 0x78

    .line 37
    .line 38
    if-gez v9, :cond_0

    .line 39
    .line 40
    sub-long v5, v5, p1

    .line 41
    .line 42
    long-to-double v5, v5

    .line 43
    div-double/2addr v5, v10

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    double-to-int v5, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    cmp-long v9, p1, v7

    .line 51
    .line 52
    if-gez v9, :cond_1

    .line 53
    .line 54
    sub-long v5, v5, p1

    .line 55
    .line 56
    long-to-double v5, v5

    .line 57
    div-double/2addr v5, v10

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    double-to-int v5, v5

    .line 63
    if-ltz v5, :cond_2

    .line 64
    .line 65
    const/4 v5, -0x1

    .line 66
    const/16 v12, 0x79

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v5, v3

    .line 70
    move v12, v5

    .line 71
    :cond_2
    :goto_1
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v10, "activity_feast_received_"

    .line 76
    .line 77
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v10, "_"

    .line 88
    .line 89
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    move-object/from16 v11, p0

    .line 100
    .line 101
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez p3, :cond_3

    .line 110
    .line 111
    cmp-long v7, p1, v7

    .line 112
    .line 113
    if-gez v7, :cond_3

    .line 114
    .line 115
    if-nez v6, :cond_3

    .line 116
    .line 117
    const/4 v6, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    move v6, v3

    .line 120
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v8, "daily_feast_"

    .line 123
    .line 124
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static/range {p1 .. p2}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    const-string v13, "offset"

    .line 145
    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    const-string v15, "length"

    .line 151
    .line 152
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v16

    .line 156
    const-string v17, "can_receive"

    .line 157
    .line 158
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v18

    .line 162
    filled-new-array/range {v13 .. v18}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const-string v6, "instance_id"

    .line 167
    .line 168
    invoke-static {v6, v7, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_4
    return-object v0
.end method

.method public static t(Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    .line 1
    const-string v0, "Item"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 22
    .line 23
    const-string v1, "item_id"

    .line 24
    .line 25
    const-string v2, "600013"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "id"

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {p0, p3}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Ljava/util/Map;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    invoke-static {p3, p1, v0, p2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-object p3

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "activity.receive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "activity.receivePower"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "activity.gamble"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "activity.exchange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static x(Ljava/util/Map;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "total_num"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "num"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static y(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "upd"

    const-string v2, "add"

    filled-new-array {v1, p1, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "del"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Item"

    invoke-static {v0, p0, p1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "user_register_time"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->U(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-string v3, "activity_money_growth_stage"

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x5

    .line 24
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long v7, v1, v5

    .line 36
    .line 37
    const-wide/16 v8, 0x3e8

    .line 38
    .line 39
    if-lez v7, :cond_0

    .line 40
    .line 41
    mul-long v10, v1, v8

    .line 42
    .line 43
    invoke-static {v10, v11}, Lcom/sgscq/vpn/handler/c;->V(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-wide v10, v5

    .line 49
    :goto_0
    cmp-long v7, v10, v5

    .line 50
    .line 51
    const/4 v12, 0x3

    .line 52
    if-lez v7, :cond_1

    .line 53
    .line 54
    const-string v5, "GMT+08:00"

    .line 55
    .line 56
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    .line 62
    invoke-static {v5, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v3, v12}, Ljava/util/Calendar;->add(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    :cond_1
    const/4 v13, 0x1

    .line 77
    if-lez v7, :cond_2

    .line 78
    .line 79
    mul-long/2addr v1, v8

    .line 80
    cmp-long v1, p1, v1

    .line 81
    .line 82
    if-ltz v1, :cond_2

    .line 83
    .line 84
    cmp-long v1, p1, v5

    .line 85
    .line 86
    if-gez v1, :cond_2

    .line 87
    .line 88
    move v1, v13

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v1, v4

    .line 91
    :goto_1
    if-eqz v1, :cond_3

    .line 92
    .line 93
    sub-long v14, p1, v10

    .line 94
    .line 95
    const-wide/32 v16, 0x5265c00

    .line 96
    .line 97
    .line 98
    div-long v14, v14, v16

    .line 99
    .line 100
    long-to-int v2, v14

    .line 101
    add-int/2addr v2, v13

    .line 102
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    if-lez v7, :cond_4

    .line 108
    .line 109
    cmp-long v2, p1, v5

    .line 110
    .line 111
    if-ltz v2, :cond_4

    .line 112
    .line 113
    move v2, v12

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move v2, v4

    .line 116
    :goto_2
    if-eqz v1, :cond_5

    .line 117
    .line 118
    sub-long v5, v5, p1

    .line 119
    .line 120
    const-wide/16 v14, 0x3e7

    .line 121
    .line 122
    add-long/2addr v5, v14

    .line 123
    div-long/2addr v5, v8

    .line 124
    const-wide/32 v8, 0x7fffffff

    .line 125
    .line 126
    .line 127
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    long-to-int v5, v5

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move v5, v4

    .line 134
    :goto_3
    if-nez p3, :cond_6

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    if-ge v0, v3, :cond_6

    .line 139
    .line 140
    move v6, v13

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move v6, v4

    .line 143
    :goto_4
    if-eqz v1, :cond_7

    .line 144
    .line 145
    if-ge v0, v3, :cond_7

    .line 146
    .line 147
    sget-object v8, Lcom/sgscq/vpn/handler/c;->e:[I

    .line 148
    .line 149
    aget v8, v8, v0

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_7
    move v8, v4

    .line 153
    :goto_5
    if-lez v7, :cond_8

    .line 154
    .line 155
    invoke-static {v10, v11}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    goto :goto_6

    .line 160
    :cond_8
    const-string v7, "inactive"

    .line 161
    .line 162
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v10, "money_growth_"

    .line 165
    .line 166
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v7, "_"

    .line 173
    .line 174
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    const/16 v9, 0xa

    .line 185
    .line 186
    new-array v9, v9, [Ljava/lang/Object;

    .line 187
    .line 188
    const-string v10, "left_time"

    .line 189
    .line 190
    aput-object v10, v9, v4

    .line 191
    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    aput-object v5, v9, v13

    .line 197
    .line 198
    const/4 v5, 0x2

    .line 199
    const-string v10, "need_gold"

    .line 200
    .line 201
    aput-object v10, v9, v5

    .line 202
    .line 203
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    aput-object v5, v9, v12

    .line 208
    .line 209
    const/4 v5, 0x4

    .line 210
    const-string v8, "left_chance"

    .line 211
    .line 212
    aput-object v8, v9, v5

    .line 213
    .line 214
    if-nez p3, :cond_a

    .line 215
    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    if-lt v0, v3, :cond_9

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_9
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    sub-int/2addr v5, v0

    .line 226
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    :cond_a
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    aput-object v0, v9, v3

    .line 235
    .line 236
    const/4 v0, 0x6

    .line 237
    const-string v1, "activity_day"

    .line 238
    .line 239
    aput-object v1, v9, v0

    .line 240
    .line 241
    const/4 v0, 0x7

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    aput-object v1, v9, v0

    .line 247
    .line 248
    const/16 v0, 0x8

    .line 249
    .line 250
    const-string v1, "can_receive"

    .line 251
    .line 252
    aput-object v1, v9, v0

    .line 253
    .line 254
    const/16 v0, 0x9

    .line 255
    .line 256
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    aput-object v1, v9, v0

    .line 261
    .line 262
    const-string v0, "instance_id"

    .line 263
    .line 264
    invoke-static {v0, v7, v9}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0
.end method


# virtual methods
.method public final varargs f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4, p3}, Lcom/sgscq/vpn/handler/k0;->j(JLjava/util/Map;)J

    move-result-wide v6

    const-string v3, "user_gold"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->c()I

    move-result v4

    invoke-virtual {v0, v4, v3, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v3

    const-string v4, "user_energy"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->b()I

    move-result v5

    invoke-virtual {v0, v5, v4, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v4

    const-string v5, "user_power"

    invoke-virtual {v0}, Lcom/sgscq/vpn/handler/k0;->d()I

    move-result v8

    invoke-virtual {v0, v8, v5, p3}, Lcom/sgscq/vpn/handler/k0;->i(ILjava/lang/String;Ljava/util/Map;)I

    move-result v5

    move-object v8, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/sgscq/vpn/h5;->t(IIIIJLjava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p3, v0, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {p3, p2, p1, p4}, Lcom/sgscq/vpn/h5;->j(Ljava/util/Map;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sgscq/vpn/p5;->u1(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 92

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/handler/c;->w(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    invoke-virtual {v3, v2}, Lcom/sgscq/vpn/handler/k0;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v4, v4, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v4, v3}, Lcom/sgscq/vpn/h5;->w0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    const-string v5, "activity.receivePower"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v8, 0x1

    const-string v9, "Player"

    const-string v10, "instance_id"

    const-string v11, "cmn"

    const-string v12, "result"

    const-string v13, "cmn_modules"

    if-eqz v5, :cond_8

    .line 1
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v1

    .line 2
    sget-boolean v5, Lcom/sgscq/vpn/c7;->i:Z

    if-eqz v5, :cond_2

    const-string v5, "\u7f51\u7edc\u65f6\u95f4\u672a\u540c\u6b65\uff0c\u6bcf\u65e5\u76db\u5bb4\u6682\u4e0d\u53ef\u7528"

    .line 3
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-static {v4, v1, v2, v8}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto :goto_3

    .line 4
    :cond_2
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/c;->V(J)J

    move-result-wide v14

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/sgscq/vpn/handler/c;->d:[I

    aget v6, v6, v5

    int-to-long v7, v6

    const-wide/32 v17, 0xea60

    mul-long v7, v7, v17

    add-long/2addr v7, v14

    const-wide/32 v17, 0x6ddd00

    add-long v17, v7, v17

    cmp-long v6, v1, v7

    if-ltz v6, :cond_3

    cmp-long v6, v1, v17

    if-gez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    :goto_1
    if-gez v5, :cond_5

    const-string v5, "\u76db\u5bb4\u6b63\u5728\u51c6\u5907\u4e2d"

    goto :goto_2

    .line 5
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "activity_feast_received_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v5, "\u672c\u65f6\u6bb5\u76db\u5bb4\u5df2\u9886\u53d6"

    .line 7
    :goto_2
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v1, v2, v6}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_3
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 8
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "daily_feast_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sgscq/vpn/c7;->c(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "user_power"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v7

    const/16 v8, 0x32

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "activity_last_power_instance"

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "activity_receive_power_count"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/c;->W()Ljava/util/LinkedHashMap;

    move-result-object v7

    const-string v14, "receive_power"

    .line 10
    invoke-static {v7, v10, v5, v8, v14}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, v1, v2, v5}, Lcom/sgscq/vpn/handler/c;->s(Ljava/util/Map;JZ)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "timing_power"

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    .line 12
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    invoke-virtual {v1, v3, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v3, v4, v4, v1}, Lcom/sgscq/vpn/handler/c;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 14
    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/c;->d(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_44

    :cond_8
    const-string v5, "activity.gamble"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "left_time"

    const-string v7, ""

    const-string v8, "add_list"

    const-string v14, "type"

    const-string v15, "id"

    const-string v1, "num"

    if-eqz v5, :cond_10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .line 15
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v11

    .line 16
    sget-boolean v5, Lcom/sgscq/vpn/c7;->i:Z

    move-object/from16 v18, v3

    .line 17
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    const/16 v0, 0xd3

    move-object/from16 v19, v9

    const/16 v9, 0x96

    invoke-virtual {v3, v9, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    .line 18
    invoke-static {v4, v11, v12, v5}, Lcom/sgscq/vpn/handler/c;->z(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_9

    const-string v0, "\u7f51\u7edc\u65f6\u95f4\u672a\u540c\u6b65\uff0c\u94b1\u751f\u94b1\u6682\u4e0d\u53ef\u7528"

    .line 19
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v4, v11, v12, v1}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 20
    :cond_9
    invoke-static {v10, v7, v2}, Lcom/sgscq/vpn/handler/c;->G(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "\u6d3b\u52a8\u5b9e\u4f8b\u5df2\u8fc7\u671f"

    goto :goto_6

    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_b

    const-string v0, "\u94b1\u751f\u94b1\u6d3b\u52a8\u5df2\u7ed3\u675f"

    goto :goto_6

    :cond_b
    const-string v2, "activity_money_growth_stage"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_c

    const-string v0, "\u94b1\u751f\u94b1\u6b21\u6570\u5df2\u7528\u5b8c"

    :goto_6
    const/4 v1, 0x0

    move-wide v5, v11

    goto/16 :goto_8

    :cond_c
    const-string v5, "need_gold"

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v3

    const-string v5, "user_gold"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v6

    if-lez v3, :cond_e

    if-ge v6, v3, :cond_d

    goto/16 :goto_7

    :cond_d
    const/16 v7, 0xd2

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v7, 0x96

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x64

    sub-int v7, v0, v3

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v13

    invoke-static/range {v20 .. v20}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v13

    move-wide/from16 v22, v11

    const/4 v11, 0x5

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int/2addr v6, v3

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "activity_last_gamble_instance"

    invoke-interface {v4, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "activity_gamble_count"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/handler/c;->W()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "consume_gold"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "reward_gold"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "gold"

    filled-new-array {v15, v6, v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v5, v22

    invoke-static {v4, v5, v6, v0}, Lcom/sgscq/vpn/handler/c;->z(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "gamble"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v3, v21

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    goto :goto_a

    :cond_e
    :goto_7
    move-wide v5, v11

    const/4 v1, 0x0

    const-string v0, "\u5143\u5b9d\u4e0d\u8db3"

    .line 21
    :goto_8
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v4, v5, v6, v1}, Lcom/sgscq/vpn/handler/c;->g(Ljava/util/Map;JZ)Ljava/util/LinkedHashMap;

    move-result-object v1

    goto/16 :goto_5

    :goto_9
    move-object v5, v0

    .line 22
    :goto_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v11, v17

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    move-object/from16 v12, v18

    invoke-virtual {v1, v12, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v12, v18

    :goto_b
    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/c;->q(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v1, v4, v2}, Lcom/sgscq/vpn/handler/c;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sgscq/vpn/handler/c;->d(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-object/from16 v13, v16

    invoke-interface {v5, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_44

    :cond_10
    move-object/from16 v90, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v11

    move-object/from16 v11, v90

    const-string v5, "activity.exchange"

    move-object v9, v1

    move-object/from16 v1, p1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "600001"

    move-object/from16 v17, v11

    const-string v11, "add"

    move-object/from16 v16, v6

    const-string v6, "upd"

    move-object/from16 v18, v7

    const-string v7, "del"

    move-object/from16 v19, v10

    const-string v10, "reward_list"

    move-object/from16 v20, v13

    const-string v13, "Item"

    move-object/from16 v21, v12

    const-string v12, "1"

    const-string v0, "pk_id"

    move-object/from16 v28, v3

    const-string v3, "delta_data"

    move-object/from16 p1, v3

    const-string v3, "default"

    if-eqz v1, :cond_1a

    const-string v1, "exchange_id"

    .line 23
    invoke-static {v1, v3, v2}, Lcom/sgscq/vpn/handler/c;->G(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v12, v2}, Lcom/sgscq/vpn/handler/c;->G(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v2

    const/4 v12, 0x1

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 24
    sget-object v12, Lcom/sgscq/vpn/handler/c;->j:[Lcom/sgscq/vpn/handler/a;

    move-object/from16 v22, v14

    array-length v14, v12

    const/16 v16, 0x0

    move-object/from16 v29, v10

    move/from16 v10, v16

    :goto_c
    if-ge v10, v14, :cond_12

    aget-object v16, v12, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p2, v12

    const-string v12, "double11_1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, p2

    goto :goto_c

    :cond_12
    const/16 v16, 0x0

    :goto_d
    if-nez v16, :cond_13

    const-string v0, "\u5151\u6362\u914d\u7f6e\u4e0d\u5b58\u5728"

    goto/16 :goto_11

    :cond_13
    const-string v10, "activity_exchange_count_"

    .line 25
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v12

    add-int/2addr v12, v2

    const/16 v14, 0x63

    if-le v12, v14, :cond_14

    const-string v0, "\u5151\u6362\u6b21\u6570\u4e0d\u8db3"

    goto/16 :goto_11

    :cond_14
    mul-int/lit8 v14, v2, 0x5

    move-object/from16 v30, v8

    .line 27
    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->t(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_15

    const/16 v16, 0x0

    goto :goto_e

    :cond_15
    invoke-static {v8}, Lcom/sgscq/vpn/handler/c;->x(Ljava/util/Map;)I

    move-result v16

    :goto_e
    move-object/from16 v17, v1

    move-object/from16 v23, v5

    move/from16 v1, v16

    const-string v5, "600013"

    move/from16 p2, v12

    const-string v12, "total_num"

    if-ge v1, v14, :cond_16

    const/4 v0, 0x0

    move-object/from16 v24, v9

    move-object/from16 v16, v12

    goto :goto_10

    :cond_16
    sub-int/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "item_num"

    move-object/from16 v24, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "item_id"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v4}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-gtz v1, :cond_17

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_17
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v6, v1, v11, v9}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14, v12}, Lcom/sgscq/vpn/handler/c;->y(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_18

    const-string v0, "\u6750\u6599\u4e0d\u8db3"

    .line 28
    :goto_11
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_13

    :cond_18
    const-string v1, "activity_last_exchange_id"

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activity_exchange_count"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v10, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v1, v2, 0x1

    const/4 v8, 0x1

    move-object/from16 v9, v23

    invoke-static {v1, v8, v9, v4}, Lcom/sgscq/vpn/handler/c;->b(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    new-array v8, v8, [Ljava/util/Map;

    invoke-static {v1, v9}, Lcom/sgscq/vpn/w1;->A2(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v8, v10

    invoke-static {v8}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/sgscq/vpn/handler/c;->W()Ljava/util/LinkedHashMap;

    move-result-object v8

    move-object/from16 v10, v17

    invoke-interface {v8, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v14, v24

    invoke-interface {v8, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v11, v30

    invoke-interface {v8, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v11, v29

    invoke-interface {v8, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "item_list"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v11, "exchange_num"

    const/4 v12, 0x0

    aput-object v11, v1, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v1, v14

    const-string v11, "max_num"

    const/16 v17, 0x2

    aput-object v11, v1, v17

    const/16 v11, 0x63

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v18, 0x3

    aput-object v11, v1, v18

    const/4 v11, 0x4

    aput-object v2, v1, v11

    new-array v2, v14, [Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v15, v14, v12

    const/4 v12, 0x1

    aput-object v5, v14, v12

    const-string v5, "need_num"

    aput-object v5, v14, v17

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v18

    const/4 v12, 0x4

    aput-object v16, v14, v12

    .line 31
    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->t(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    if-nez v12, :cond_19

    const/4 v12, 0x0

    goto :goto_12

    :cond_19
    invoke-static {v12}, Lcom/sgscq/vpn/handler/c;->x(Ljava/util/Map;)I

    move-result v12

    .line 32
    :goto_12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v5

    move-object/from16 v12, v22

    invoke-static {v12, v11, v14}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v2, v12

    invoke-static {v2}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v10, v3, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "exchange_info"

    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v28

    invoke-interface {v8, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/c;->y(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v10, p1

    .line 34
    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v5, v8

    .line 35
    :goto_13
    iget-object v1, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    move-object/from16 v8, v21

    invoke-virtual {v1, v8, v4}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v5, v4}, Lcom/sgscq/vpn/handler/c;->q(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1, v4, v2}, Lcom/sgscq/vpn/handler/c;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_14
    move-object/from16 v2, v20

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_44

    :cond_1a
    move-object/from16 v23, v5

    move-object v5, v8

    move-object v8, v10

    move-object/from16 v1, v28

    move-object v10, v0

    move-object/from16 v28, v21

    move-object/from16 v0, p0

    move-object/from16 v21, v14

    move-object v14, v9

    .line 36
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v14

    :try_start_0
    iget-object v14, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v14, v14, Lcom/sgscq/vpn/handler/k0;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    move-result-object v14

    if-nez v14, :cond_1b

    goto :goto_16

    :cond_1b
    invoke-virtual {v14}, Lcom/sgscq/vpn/a7;->a()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_15
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Lcom/sgscq/vpn/a7;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1c
    move-object/from16 v0, p0

    goto :goto_15

    :catch_0
    :cond_1d
    :goto_16
    move-object v14, v9

    move-object v0, v10

    .line 37
    invoke-static {}, Lcom/sgscq/vpn/c7;->f()J

    move-result-wide v9

    move-object/from16 v29, v14

    move-object/from16 v14, v19

    .line 38
    invoke-static {v14, v3, v2}, Lcom/sgscq/vpn/handler/c;->G(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 39
    sget-boolean v3, Lcom/sgscq/vpn/c7;->i:Z

    move-object/from16 v19, v1

    const-string v1, ","

    move-object/from16 p2, v1

    const-string v1, "activity_list"

    move-object/from16 v30, v8

    const-string v8, "cumulative_login_yuanbao"

    move-object/from16 v31, v5

    const-string v5, "continuous_signin"

    move-object/from16 v32, v14

    const-string v14, "month_signin"

    move-object/from16 v42, v13

    const-string v13, "daily_check"

    if-eqz v3, :cond_20

    .line 40
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v3, 0x0

    goto :goto_18

    :cond_1f
    :goto_17
    const/4 v3, 0x1

    :goto_18
    if-eqz v3, :cond_20

    const-string v0, "\u7f51\u7edc\u65f6\u95f4\u672a\u540c\u6b65\uff0c\u7b7e\u5230\u6d3b\u52a8\u6682\u4e0d\u53ef\u7528"

    .line 41
    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v9, v10, v4}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :cond_20
    const-string v3, "level_general"

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 v25, v14

    const-string v14, "opening_recharge_gifts"

    move-object/from16 v26, v8

    const-string v8, "collect_god"

    move-object/from16 v27, v5

    const-string v5, "finish_dungeon"

    if-nez v22, :cond_22

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_22

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_22

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    goto :goto_19

    :cond_21
    const/16 v22, 0x0

    goto :goto_1a

    :cond_22
    :goto_19
    const/16 v22, 0x1

    :goto_1a
    move-object/from16 v33, v13

    const-string v13, "party"

    move-object/from16 v43, v13

    const-string v13, "activity_last_receive_instance"

    move-object/from16 v34, v13

    const-string v13, "activity_receive_count"

    const-string v35, "\u5956\u52b1\u6682\u4e0d\u53ef\u9886\u53d6"

    if-eqz v22, :cond_41

    .line 43
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_23

    invoke-static {v9, v10, v4}, Lcom/sgscq/vpn/handler/c;->Q(JLjava/util/Map;)I

    move-result v16

    if-gtz v16, :cond_23

    const-string v35, "\u5145\u503c\u6709\u793c\u6d3b\u52a8\u5df2\u7ed3\u675f"

    goto/16 :goto_20

    .line 44
    :cond_23
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_25

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v16, 0x0

    goto :goto_1c

    :cond_25
    :goto_1b
    const/16 v16, 0x1

    :goto_1c
    if-eqz v16, :cond_27

    .line 45
    invoke-static {v9, v10, v4}, Lcom/sgscq/vpn/handler/c;->E(JLjava/util/Map;)I

    move-result v16

    if-gtz v16, :cond_27

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v35, "\u5f00\u670d\u51b2\u5173\u6d3b\u52a8\u5df2\u7ed3\u675f"

    goto/16 :goto_20

    :cond_26
    const-string v35, "\u96c6\u795e\u5c06\u6d3b\u52a8\u5df2\u7ed3\u675f"

    goto/16 :goto_20

    .line 46
    :cond_27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    sget-object v16, Lcom/sgscq/vpn/handler/c;->f:[Lcom/sgscq/vpn/handler/b;

    goto :goto_1d

    :cond_28
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    sget-object v16, Lcom/sgscq/vpn/handler/c;->g:[Lcom/sgscq/vpn/handler/b;

    goto :goto_1d

    :cond_29
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2a

    sget-object v16, Lcom/sgscq/vpn/handler/c;->h:[Lcom/sgscq/vpn/handler/b;

    goto :goto_1d

    :cond_2a
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    sget-object v16, Lcom/sgscq/vpn/handler/c;->i:[Lcom/sgscq/vpn/handler/b;

    :goto_1d
    move-object/from16 v37, v5

    move-object/from16 v36, v8

    move-object/from16 v8, v16

    goto :goto_1e

    :cond_2b
    move-object/from16 v36, v8

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/sgscq/vpn/handler/b;

    move-object/from16 v37, v5

    .line 47
    :goto_1e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v3

    array-length v3, v8

    const/16 v16, 0x0

    move-object/from16 v39, v13

    move/from16 v13, v16

    :goto_1f
    if-ge v13, v3, :cond_2d

    move/from16 v16, v3

    aget-object v3, v8, v13

    move-object/from16 v21, v8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v40, v7

    iget v7, v3, Lcom/sgscq/vpn/handler/b;->a:I

    invoke-static {v2, v7}, Lcom/sgscq/vpn/handler/c;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    iget v7, v3, Lcom/sgscq/vpn/handler/b;->f:I

    invoke-static {v7, v4}, Lcom/sgscq/vpn/handler/c;->J(ILjava/util/Map;)I

    move-result v7

    iget v8, v3, Lcom/sgscq/vpn/handler/b;->a:I

    if-lt v7, v8, :cond_2c

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move-object/from16 v8, v21

    move-object/from16 v7, v40

    goto :goto_1f

    :cond_2d
    move-object/from16 v40, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    :goto_20
    invoke-static/range {v35 .. v35}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v9, v10, v4}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    move-object/from16 v77, p2

    move-object v11, v4

    move-object/from16 v18, v28

    move-object/from16 v28, v19

    goto/16 :goto_33

    :cond_2e
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-wide/from16 v44, v9

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v46, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v21, v5

    move-object v5, v4

    :goto_22
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    move-object/from16 v33, v3

    const-string v3, "Equipment"

    move-object/from16 v35, v10

    const-string v10, "General"

    move-object/from16 v41, v13

    const-string v13, "Skill"

    if-eqz v22, :cond_38

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v47, v4

    move-object/from16 v4, v22

    check-cast v4, Lcom/sgscq/vpn/handler/b;

    move-object/from16 v48, v3

    iget v3, v4, Lcom/sgscq/vpn/handler/b;->e:I

    move-object/from16 v49, v6

    iget-object v6, v4, Lcom/sgscq/vpn/handler/b;->c:Ljava/lang/String;

    move-object/from16 v50, v11

    iget v11, v4, Lcom/sgscq/vpn/handler/b;->d:I

    move-object/from16 v51, v12

    const-string v12, "card_type"

    move-object/from16 v52, v15

    const/4 v15, 0x6

    if-ne v3, v15, :cond_2f

    invoke-static {v11, v6, v5}, Lcom/sgscq/vpn/handler/c;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v4, Lcom/sgscq/vpn/handler/b;->c:Ljava/lang/String;

    move-object/from16 v54, v4

    move-object/from16 v56, v4

    move-object/from16 v58, v4

    .line 48
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v53, "id"

    const-string v55, "item_id"

    const-string v57, "general_id"

    const-string v59, "num"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    const-string v61, "item_num"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const-string v63, "item_type"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    move-object/from16 v64, v66

    const-string v65, "type"

    const-string v67, "card_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v68

    const-string v69, "is_new"

    sget-object v70, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array/range {v53 .. v70}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v54, v2

    move-object/from16 v57, v7

    move-object/from16 v56, v9

    move-object/from16 v53, v14

    move-object/from16 v12, v33

    move-object/from16 v11, v35

    move-object/from16 v7, v40

    move-object/from16 v3, v47

    move-object/from16 v6, v49

    move-object/from16 v15, v50

    move-object/from16 v2, v52

    move-object v14, v1

    move-object/from16 v40, v8

    move-object/from16 v1, v41

    goto/16 :goto_29

    :cond_2f
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget v15, v4, Lcom/sgscq/vpn/handler/b;->e:I

    if-eqz v3, :cond_37

    const/4 v3, 0x0

    .line 50
    invoke-static {v3}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v3

    move-object/from16 v53, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v4, Lcom/sgscq/vpn/handler/b;->b:Ljava/lang/String;

    move-object/from16 v54, v2

    const-string v2, "skill_id"

    move-object/from16 v55, v1

    const-string v1, "general_id"

    move-object/from16 v22, v6

    const/4 v6, 0x1

    if-ne v15, v6, :cond_33

    invoke-static {v10, v1, v4, v5}, Lcom/sgscq/vpn/handler/c;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    goto :goto_23

    :cond_30
    const/4 v6, 0x0

    :goto_23
    invoke-virtual {v3, v4, v5}, Lcom/sgscq/vpn/w1;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    if-nez v10, :cond_31

    const/4 v1, 0x0

    invoke-static {v15, v11, v4, v1}, Lcom/sgscq/vpn/handler/c;->A(IILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object v4, v1

    move-object/from16 v57, v7

    move-object/from16 v56, v9

    move-object/from16 v11, v35

    move-object/from16 v7, v40

    move-object/from16 v1, v41

    move-object/from16 v3, v47

    move-object/from16 v6, v49

    move-object/from16 v15, v50

    move-object/from16 v2, v52

    move-object/from16 v14, v55

    move-object/from16 v40, v8

    goto/16 :goto_28

    :cond_31
    invoke-static {v7, v10}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    move-object/from16 v12, v18

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v0, v10, v5}, Lcom/sgscq/vpn/handler/c;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    invoke-static {v1, v4, v14, v5}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/sgscq/vpn/w1;->T0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v14, v5}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    if-eqz v6, :cond_32

    const/16 v1, 0x12

    invoke-static {v1, v4, v5}, Lcom/sgscq/vpn/handler/c;->a(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    :cond_32
    move-object/from16 v57, v7

    move-object/from16 v56, v9

    move/from16 v58, v11

    move-object/from16 v18, v12

    move/from16 v59, v15

    move-object/from16 v10, v22

    move-object/from16 v11, v40

    move-object/from16 v7, v49

    move-object/from16 v6, v50

    move-object/from16 v12, v51

    goto/16 :goto_24

    :cond_33
    move-object/from16 v3, v18

    const-string v6, "is_new"

    const-string v10, "get_time"

    const-string v3, "level"

    move-object/from16 v56, v9

    const-string v9, "0"

    move-object/from16 v57, v7

    const-string v7, "general_pk_id"

    move/from16 v58, v11

    const/4 v11, 0x4

    if-ne v15, v11, :cond_34

    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-static {v13, v5}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    move/from16 v59, v15

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v22, v13

    move-object/from16 v23, v5

    move-object/from16 v24, v15

    move-object/from16 v25, v0

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    .line 52
    invoke-static/range {v22 .. v27}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v52

    invoke-interface {v15, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "skill_code"

    invoke-interface {v15, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "4"

    invoke-interface {v15, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v51

    invoke-interface {v15, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "skill_level"

    invoke-interface {v15, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "position"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pos"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "skill_position"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_natural"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v15, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v15, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "exp"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "extra_level"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "advanced_level"

    invoke-interface {v15, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v15}, Lcom/sgscq/vpn/w1;->S(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v49

    move-object/from16 v6, v50

    filled-new-array {v7, v3, v6, v11}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v11, v40

    invoke-static {v11, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v5, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v8, v15}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    invoke-static {v2, v4, v14, v5}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object v10, v15

    :goto_24
    move-object v15, v6

    move-object v6, v7

    move-object/from16 v40, v8

    move-object v7, v11

    move-object/from16 v51, v12

    move-object/from16 v1, v41

    move-object/from16 v3, v47

    move-object/from16 v2, v52

    move-object v8, v5

    move-object v5, v14

    goto/16 :goto_25

    :cond_34
    move/from16 v59, v15

    move-object/from16 v11, v40

    move-object/from16 v13, v49

    move-object/from16 v15, v50

    move-object/from16 v2, v52

    const/4 v12, 0x3

    move-object/from16 v40, v8

    move/from16 v8, v59

    if-ne v8, v12, :cond_36

    const/4 v12, 0x0

    .line 55
    invoke-static {v12}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v12

    move/from16 v59, v8

    move-object/from16 v8, v48

    move-object/from16 v48, v14

    invoke-static {v8, v5}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v49, v11

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v50, v13

    const-string v13, "equipment_id"

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    move-object/from16 v24, v11

    move-object/from16 v25, v0

    move-object/from16 v26, v13

    move-object/from16 v27, v4

    .line 56
    invoke-static/range {v22 .. v27}, Lc/a;->x(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "equip_id"

    .line 57
    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "eid"

    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "equipment_level"

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "refine_level"

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "refine_exp"

    invoke-interface {v11, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v11, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_general_id"

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_wear"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wear"

    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "bore_list"

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v4, v11}, Lcom/sgscq/vpn/w1;->R(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v50

    filled-new-array {v6, v3, v15, v14}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v7, v49

    invoke-static {v7, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v3, v47

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v41

    .line 58
    invoke-static {v1, v11}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    move-object/from16 v5, v48

    invoke-static {v13, v4, v5, v3}, Lcom/sgscq/vpn/w1;->b2(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object v8, v3

    move-object v10, v11

    :goto_25
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object/from16 v11, v35

    invoke-static {v11, v9}, Lcom/sgscq/vpn/handler/c;->R(Ljava/util/LinkedHashMap;Ljava/util/Map;)V

    goto :goto_26

    :cond_35
    move-object/from16 v11, v35

    move/from16 v9, v58

    move/from16 v12, v59

    invoke-static {v12, v9, v4, v10}, Lcom/sgscq/vpn/handler/c;->A(IILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v5, v8

    goto :goto_27

    :cond_36
    move v12, v8

    move-object v7, v11

    move-object v6, v13

    move-object/from16 v4, v22

    move-object/from16 v11, v35

    move-object/from16 v1, v41

    move-object/from16 v3, v47

    move/from16 v9, v58

    invoke-static {v9, v12, v4, v5}, Lcom/sgscq/vpn/handler/c;->b(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :goto_27
    move-object/from16 v14, v55

    .line 59
    :goto_28
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v33

    goto :goto_29

    :cond_37
    move-object/from16 v54, v2

    move-object v4, v6

    move-object/from16 v57, v7

    move-object/from16 v56, v9

    move v9, v11

    move-object/from16 v53, v14

    move v12, v15

    move-object/from16 v11, v35

    move-object/from16 v7, v40

    move-object/from16 v3, v47

    move-object/from16 v6, v49

    move-object/from16 v15, v50

    move-object/from16 v2, v52

    move-object v14, v1

    move-object/from16 v40, v8

    move-object/from16 v1, v41

    invoke-static {v9, v12, v4, v5}, Lcom/sgscq/vpn/handler/c;->b(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, v33

    invoke-interface {v12, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v4}, Lcom/sgscq/vpn/w1;->A2(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    move-object v13, v1

    move-object v4, v3

    move-object v10, v11

    move-object v3, v12

    move-object v1, v14

    move-object v11, v15

    move-object/from16 v8, v40

    move-object/from16 v12, v51

    move-object/from16 v14, v53

    move-object/from16 v9, v56

    move-object v15, v2

    move-object/from16 v40, v7

    move-object/from16 v2, v54

    move-object/from16 v7, v57

    goto/16 :goto_22

    :cond_38
    move-object/from16 v54, v2

    move-object/from16 v57, v7

    move-object/from16 v56, v9

    move-object v15, v11

    move-object/from16 v53, v14

    move-object/from16 v12, v33

    move-object/from16 v11, v35

    move-object/from16 v7, v40

    move-object v14, v1

    move-object/from16 v40, v8

    move-object/from16 v1, v41

    move-object v8, v3

    move-object v3, v4

    move-object v4, v6

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/handler/b;

    iget v2, v2, Lcom/sgscq/vpn/handler/b;->a:I

    move-object/from16 v6, v54

    invoke-static {v6, v2}, Lcom/sgscq/vpn/handler/c;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_39
    move-object/from16 v2, v34

    move-object/from16 v6, v54

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v39

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {v57 .. v57}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v56 .. v56}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v47, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3a

    move-object/from16 v55, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v54, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v4, v0, v15, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v6, v42

    invoke-interface {v11, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3a
    move-object/from16 v54, v6

    move-object/from16 v55, v14

    :goto_2b
    invoke-static {v10, v3, v2, v11}, Lcom/sgscq/vpn/handler/c;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    invoke-static {v13, v3, v5, v11}, Lcom/sgscq/vpn/handler/c;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    invoke-static {v8, v3, v9, v11}, Lcom/sgscq/vpn/handler/c;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v4, v1, v15, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "GeneralSoul"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    const-string v0, "Atlas"

    invoke-static {v0, v3, v12, v11}, Lcom/sgscq/vpn/handler/c;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V

    invoke-static {}, Lcom/sgscq/vpn/handler/c;->W()Ljava/util/LinkedHashMap;

    move-result-object v0

    move-object/from16 v1, v32

    move-object/from16 v4, v54

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v55 .. v55}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v5, v31

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v55 .. v55}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v7, v30

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    move-object/from16 v2, v38

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v6, "level_general"

    const/4 v7, 0x1

    const/16 v8, 0x9

    const v9, 0x15180

    .line 61
    sget-object v10, Lcom/sgscq/vpn/handler/c;->f:[Lcom/sgscq/vpn/handler/b;

    move-object/from16 v12, v20

    move-object/from16 v5, v47

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-wide/from16 v71, v44

    move-object/from16 v15, p1

    invoke-static/range {v5 .. v10}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    move-result-object v2

    move-object v4, v2

    move-object/from16 v2, v47

    move-wide/from16 v75, v71

    goto/16 :goto_2d

    :cond_3c
    move-object/from16 v15, p1

    move-object/from16 v12, v20

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    move-wide/from16 v9, v44

    move-object/from16 v2, v47

    .line 62
    invoke-static {v9, v10, v2}, Lcom/sgscq/vpn/handler/c;->E(JLjava/util/Map;)I

    move-result v16

    move-object/from16 v5, v37

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v6, "finish_dungeon"

    const/16 v7, 0x81

    const/16 v8, 0xa

    .line 63
    sget-object v4, Lcom/sgscq/vpn/handler/c;->g:[Lcom/sgscq/vpn/handler/b;

    move-object v5, v2

    move-wide/from16 v73, v9

    move/from16 v9, v16

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    move-result-object v4

    goto :goto_2c

    :cond_3d
    move-wide/from16 v73, v9

    move-object/from16 v5, v36

    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v6, "collect_god"

    const/16 v7, 0x9

    const/16 v8, 0xb

    .line 65
    sget-object v10, Lcom/sgscq/vpn/handler/c;->h:[Lcom/sgscq/vpn/handler/b;

    move-object v5, v2

    move/from16 v9, v16

    invoke-static/range {v5 .. v10}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    move-result-object v4

    :goto_2c
    move-wide/from16 v75, v73

    goto :goto_2d

    :cond_3e
    move-object/from16 v5, v53

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    move-wide/from16 v9, v73

    invoke-static {v9, v10, v2}, Lcom/sgscq/vpn/handler/c;->Q(JLjava/util/Map;)I

    move-result v4

    const-string v6, "opening_recharge_gifts"

    const/16 v7, 0x8

    const/16 v8, 0xc

    .line 67
    sget-object v16, Lcom/sgscq/vpn/handler/c;->i:[Lcom/sgscq/vpn/handler/b;

    move-object v5, v2

    move-wide/from16 v75, v9

    move v9, v4

    move-object/from16 v10, v16

    invoke-static/range {v5 .. v10}, Lcom/sgscq/vpn/handler/c;->I(Ljava/util/Map;Ljava/lang/String;III[Lcom/sgscq/vpn/handler/b;)Ljava/util/LinkedHashMap;

    move-result-object v4

    goto :goto_2d

    :cond_3f
    move-wide/from16 v75, v73

    .line 68
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_2d
    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 69
    invoke-static {v1}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v8, v43

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v4, v75

    invoke-static {v4, v5, v2}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v10, v46

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_40
    move-object/from16 v4, p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v2

    move-object/from16 v28, v3

    move-object/from16 v77, v4

    move-object/from16 v20, v12

    move-object/from16 v18, v13

    move-object/from16 v29, v14

    move-object/from16 p1, v15

    goto/16 :goto_33

    :cond_41
    move-object/from16 v15, p1

    move-object/from16 v77, p2

    move-object v11, v4

    move-object/from16 v3, v19

    move-object/from16 v18, v28

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v42

    move-object/from16 v8, v43

    move-object v4, v2

    move-object/from16 v2, v34

    move-wide/from16 v90, v9

    move-object v10, v1

    move-object v9, v13

    move-object/from16 v1, v32

    move-wide/from16 v12, v90

    .line 70
    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->P(Ljava/util/Map;)Z

    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v33

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const-string v15, "activity_received_cumulative_login_day_"

    if-eqz v22, :cond_43

    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->D(Ljava/util/Map;)I

    move-result v19

    if-gtz v19, :cond_42

    move-object/from16 v28, v3

    goto :goto_2f

    :cond_42
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/handler/c;->n(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v28, v3

    move-object/from16 v42, v6

    move-object/from16 v46, v10

    move/from16 v10, v19

    move-object/from16 v19, v22

    move-object/from16 v6, v26

    move-object/from16 v3, v27

    goto :goto_31

    :cond_43
    move-object/from16 v28, v3

    move-object/from16 v3, v27

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_45

    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->B(Ljava/util/Map;)I

    move-result v19

    if-gtz v19, :cond_44

    goto :goto_2f

    :cond_44
    invoke-static/range {v19 .. v19}, Lcom/sgscq/vpn/handler/c;->k(I)Ljava/lang/String;

    move-result-object v22

    const/16 v27, -0x1

    move-object/from16 v42, v6

    move-object/from16 v46, v10

    move-object/from16 v6, v26

    goto :goto_30

    :cond_45
    move-object/from16 v42, v6

    move-object/from16 v6, v26

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_47

    move-object/from16 v46, v10

    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->C(Ljava/util/Map;)I

    move-result v10

    if-gtz v10, :cond_46

    :goto_2f
    invoke-static/range {v35 .. v35}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_33

    .line 71
    :cond_46
    invoke-static {v15, v10}, La/b0;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const/16 v19, -0x1

    move/from16 v27, v10

    :goto_30
    const/4 v10, -0x1

    move-wide/from16 v71, v12

    move-object/from16 v12, v22

    goto :goto_32

    :cond_47
    move-object/from16 v46, v10

    const/4 v10, -0x1

    :goto_31
    const/16 v27, -0x1

    const/16 v22, -0x1

    move-wide/from16 v71, v12

    move-object/from16 v12, v19

    move/from16 v19, v22

    .line 72
    :goto_32
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v43, v8

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    const-string v0, "\u5956\u52b1\u5df2\u9886\u53d6"

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->r(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_33
    const/4 v1, 0x0

    move-object/from16 v4, p1

    move-object v5, v0

    move-object/from16 v0, v28

    goto/16 :goto_40

    :cond_48
    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v10, :cond_49

    invoke-static {v14}, Lcom/sgscq/vpn/handler/c;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/handler/c;->T(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sgscq/vpn/handler/c;->c:[[Lcom/sgscq/vpn/config/h;

    const-string v8, "791661"

    if-lez v19, :cond_4a

    sget-object v9, Lcom/sgscq/vpn/handler/c;->b:[[Lcom/sgscq/vpn/config/h;

    add-int/lit8 v19, v19, -0x1

    aget-object v9, v9, v19

    goto :goto_34

    :cond_4a
    if-lez v27, :cond_4b

    add-int/lit8 v27, v27, -0x1

    aget-object v9, v2, v27

    :goto_34
    move-object/from16 p2, v2

    move-object/from16 v12, v25

    goto :goto_37

    :cond_4b
    const/4 v9, 0x1

    new-array v10, v9, [Lcom/sgscq/vpn/config/h;

    move-object/from16 v12, v25

    .line 73
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4d

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4c

    goto :goto_35

    :cond_4c
    new-instance v13, Lcom/sgscq/vpn/config/h;

    move-object/from16 p2, v2

    move-object/from16 v2, v23

    invoke-direct {v13, v2, v9}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    goto :goto_36

    :cond_4d
    :goto_35
    move-object/from16 p2, v2

    new-instance v13, Lcom/sgscq/vpn/config/h;

    const/4 v2, 0x5

    invoke-direct {v13, v8, v2}, Lcom/sgscq/vpn/config/h;-><init>(Ljava/lang/String;I)V

    :goto_36
    const/4 v2, 0x0

    aput-object v13, v10, v2

    move-object v9, v10

    .line 74
    :goto_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v9

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v10, :cond_4e

    move/from16 v19, v10

    aget-object v10, v9, v13

    move-object/from16 v22, v15

    iget-object v15, v10, Lcom/sgscq/vpn/config/h;->b:Ljava/io/Serializable;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v26, v6

    iget v6, v10, Lcom/sgscq/vpn/config/h;->c:I

    iget v10, v10, Lcom/sgscq/vpn/config/h;->d:I

    invoke-static {v6, v10, v15, v11}, Lcom/sgscq/vpn/handler/c;->b(IILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v19

    move-object/from16 v15, v22

    move-object/from16 v6, v26

    goto :goto_38

    :cond_4e
    move-object/from16 v26, v6

    move-object/from16 v22, v15

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_50

    array-length v13, v9

    if-ge v10, v13, :cond_4f

    aget-object v13, v9, v10

    iget v13, v13, Lcom/sgscq/vpn/config/h;->c:I

    move-object/from16 v19, v9

    move-object/from16 v9, v24

    goto :goto_3a

    :cond_4f
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v19, v9

    move-object/from16 v9, v24

    invoke-interface {v13, v9, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v13, v15}, Lcom/sgscq/vpn/w1;->l2(Ljava/lang/String;I)I

    move-result v13

    :goto_3a
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    invoke-static {v13, v15}, Lcom/sgscq/vpn/w1;->A2(ILjava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v24, v9

    move-object/from16 v9, v19

    goto :goto_39

    .line 76
    :cond_50
    invoke-static {}, Lcom/sgscq/vpn/handler/c;->W()Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-interface {v9, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v9, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/util/Map;

    .line 77
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v12, 0xf

    .line 78
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    const v13, 0x15180

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v13, "activity_type"

    const-string v15, "object"

    move-object/from16 v19, v2

    const-string v2, "status"

    move-object/from16 v23, v9

    const-string v9, "condition"

    move-object/from16 v24, v5

    const-string v5, "is_received"

    if-eqz v10, :cond_52

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 80
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v52, "month_signin"

    invoke-static/range {v52 .. v52}, Lcom/sgscq/vpn/handler/c;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_51

    goto :goto_3b

    :cond_51
    const-string v30, "id"

    const-string v31, "791661"

    const-string v32, "item_id"

    const-string v33, "791661"

    const-string v34, "num"

    const-string v36, "item_num"

    const-string v38, "item_type"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v35, v1

    move-object/from16 v37, v1

    filled-new-array/range {v30 .. v39}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v8, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    :goto_3b
    const-string v47, "type"

    const-string v49, "can_receive"

    xor-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    const-string v51, "instance_id"

    const-string v53, "home_sort"

    const-string v55, "left_time"

    const-string v57, "instance_countdown"

    const-string v59, "instance_interval"

    const-string v61, "reward_list"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/util/Map;

    new-array v0, v0, [Ljava/util/Map;

    const/4 v7, 0x0

    aput-object v3, v0, v7

    .line 81
    invoke-static {v0}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 82
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v6}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v62

    move-object/from16 v48, v12

    move-object/from16 v56, v60

    move-object/from16 v58, v60

    filled-new-array/range {v47 .. v62}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_3f

    .line 83
    :cond_52
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v11, v0}, Lcom/sgscq/vpn/handler/c;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_3f

    :cond_53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->l(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_3f

    :cond_54
    move-object/from16 v3, v26

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v32, "instance_id"

    const-string v30, "can_receive"

    if-eqz v8, :cond_58

    .line 84
    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->N(Ljava/util/Map;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3c
    const/16 v6, 0x38

    if-ge v4, v6, :cond_56

    add-int/lit8 v6, v4, 0x1

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    aget-object v4, p2, v4

    .line 87
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v14, v4

    const/16 v22, 0x0

    move-object/from16 v25, v12

    move/from16 v12, v22

    :goto_3d
    if-ge v12, v14, :cond_55

    move/from16 v22, v14

    aget-object v14, v4, v12

    move-object/from16 v26, v4

    .line 88
    iget-object v4, v14, Lcom/sgscq/vpn/config/h;->b:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v27, v13

    iget v13, v14, Lcom/sgscq/vpn/config/h;->d:I

    invoke-static {v4, v13}, Lcom/sgscq/vpn/handler/c;->j(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v31, v7

    iget-object v7, v14, Lcom/sgscq/vpn/config/h;->b:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    const-string v78, "id"

    const-string v80, "item_id"

    const-string v82, "num"

    iget v14, v14, Lcom/sgscq/vpn/config/h;->c:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v83

    const-string v84, "item_num"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v85

    const-string v86, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v87

    const-string v88, "item_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v89

    move-object/from16 v79, v7

    move-object/from16 v81, v7

    filled-new-array/range {v78 .. v89}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 89
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v22

    move-object/from16 v4, v26

    move-object/from16 v13, v27

    move-object/from16 v7, v31

    goto :goto_3d

    :cond_55
    move-object/from16 v31, v7

    move-object/from16 v27, v13

    .line 90
    invoke-static {v10}, Lcom/sgscq/vpn/handler/c;->F(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v7, v8}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v15, v4, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move-object/from16 v22, v25

    move-object/from16 v7, v31

    goto/16 :goto_3c

    :cond_56
    move-object/from16 v31, v7

    move-object/from16 v27, v13

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v30, v4, v0

    invoke-static {v11}, Lcom/sgscq/vpn/handler/c;->C(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_57

    const/4 v0, 0x1

    goto :goto_3e

    :cond_57
    const/4 v0, 0x0

    :goto_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v0, 0x4

    aput-object v32, v4, v0

    const/4 v0, 0x5

    aput-object v3, v4, v0

    const-string v0, "instance_bg"

    const/4 v3, 0x6

    aput-object v0, v4, v3

    const-string v0, "new"

    const/4 v3, 0x7

    aput-object v0, v4, v3

    const-string v0, "home_sort"

    const/16 v3, 0x8

    aput-object v0, v4, v3

    const/16 v0, 0x9

    aput-object v54, v4, v0

    const/16 v0, 0xa

    aput-object v16, v4, v0

    const/16 v0, 0xb

    aput-object v60, v4, v0

    const-string v0, "instance_countdown"

    const/16 v3, 0xc

    aput-object v0, v4, v3

    const/16 v0, 0xd

    aput-object v60, v4, v0

    const/16 v0, 0xe

    const-string v3, "instance_interval"

    aput-object v3, v4, v0

    const/16 v0, 0xf

    aput-object v60, v4, v0

    const/16 v0, 0x10

    aput-object v31, v4, v0

    const/16 v0, 0x11

    aput-object v1, v4, v0

    move-object/from16 v0, v27

    invoke-static {v0, v2, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_3f

    :cond_58
    move-object v0, v13

    .line 91
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Lcom/sgscq/vpn/handler/c;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    const-string v34, "left_time"

    const-string v36, "instance_countdown"

    const-string v38, "instance_interval"

    const-string v40, "reward_list"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Map;

    invoke-static {v6}, Lcom/sgscq/vpn/handler/c;->S(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v1, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15, v6, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    invoke-static {v7}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v41

    move-object/from16 v33, v4

    move-object/from16 v35, v60

    move-object/from16 v37, v60

    move-object/from16 v39, v60

    filled-new-array/range {v30 .. v41}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_3f
    const/4 v1, 0x0

    aput-object v0, v24, v1

    .line 92
    invoke-static/range {v24 .. v24}, Lcom/sgscq/vpn/p5;->v0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v3, v23

    move-object/from16 v2, v43

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v4, v71

    invoke-static {v4, v5, v11}, Lcom/sgscq/vpn/handler/c;->e(JLjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v2, v46

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v28

    move-object/from16 v2, v42

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v19

    invoke-static {v2, v4}, Lcom/sgscq/vpn/handler/c;->y(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 93
    :goto_40
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v17

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_43

    :cond_59
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v5, v2}, Lcom/sgscq/vpn/handler/c;->q(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_41
    if-ge v1, v8, :cond_5a

    aget-object v9, v7, v1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_5a
    move-object/from16 v1, v29

    invoke-static {v1, v11}, Lcom/sgscq/vpn/handler/y0;->c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sgscq/vpn/handler/j;->b(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v6}, Lcom/sgscq/vpn/handler/j;->a(Ljava/util/Map;Ljava/util/AbstractCollection;)V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    move-object/from16 v4, v77

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_5d
    :goto_43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "119"

    invoke-static {v0, v11}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    iget-object v1, v1, Lcom/sgscq/vpn/handler/k0;->d:Lcom/sgscq/vpn/h5;

    move-object/from16 v2, v18

    invoke-virtual {v1, v2, v11}, Lcom/sgscq/vpn/h5;->S0(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v5, v11}, Lcom/sgscq/vpn/handler/c;->q(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Lcom/sgscq/vpn/handler/c;->i(Ljava/util/LinkedHashMap;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v11, v3}, Lcom/sgscq/vpn/handler/c;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/sgscq/vpn/handler/c;->d(Ljava/util/LinkedHashMap;Ljava/util/Map;)Ljava/util/Map;

    goto/16 :goto_14

    :goto_44
    iget-object v1, v0, Lcom/sgscq/vpn/handler/c;->a:Lcom/sgscq/vpn/handler/k0;

    invoke-static {v5}, Lcom/sgscq/vpn/p5;->s1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/handler/k0;->n(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method
