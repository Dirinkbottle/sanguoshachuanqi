.class public final synthetic Lcom/sgscq/vpn/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/sgscq/vpn/w1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sgscq/vpn/config/i;

.field public final synthetic d:Lp/a;

.field public final synthetic e:Lcom/sgscq/vpn/config/m;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/w1;Ljava/lang/String;Lcom/sgscq/vpn/config/i;Lp/a;Lcom/sgscq/vpn/config/m;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/h2;->a:Lcom/sgscq/vpn/w1;

    iput-object p2, p0, Lcom/sgscq/vpn/h2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sgscq/vpn/h2;->c:Lcom/sgscq/vpn/config/i;

    iput-object p4, p0, Lcom/sgscq/vpn/h2;->d:Lp/a;

    iput-object p5, p0, Lcom/sgscq/vpn/h2;->e:Lcom/sgscq/vpn/config/m;

    iput-wide p6, p0, Lcom/sgscq/vpn/h2;->f:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 78

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sgscq/vpn/h2;->c:Lcom/sgscq/vpn/config/i;

    iget-wide v1, v0, Lcom/sgscq/vpn/h2;->f:J

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v15, v0, Lcom/sgscq/vpn/h2;->b:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const/4 v8, 0x3

    .line 2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v8, 0x1

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 5
    iget-object v12, v0, Lcom/sgscq/vpn/h2;->a:Lcom/sgscq/vpn/w1;

    iget-object v11, v0, Lcom/sgscq/vpn/h2;->d:Lp/a;

    const-string v10, ":"

    const-wide/32 v22, 0xa8c0

    const-wide/16 v24, 0x3e8

    const-string v9, "wine_limited:"

    const-string v0, "fate_skill_id"

    const/16 v16, 0x4

    move-object/from16 v26, v5

    .line 6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v27, v0

    const-string v0, "fate_box_id"

    move-object/from16 v28, v5

    const-string v5, "box_id"

    move-object/from16 v29, v13

    const-string v13, "resource_id"

    move-object/from16 v30, v4

    const-string v4, "600045"

    move-object/from16 v31, v3

    const-string v3, "base_item_id"

    move-object/from16 v32, v8

    const-string v8, "fate_equip_id"

    move-object/from16 v33, v0

    const-string v0, "\u7f18\u4efd\u6280\u80fd\u793c\u5305\uff08"

    move-object/from16 v34, v0

    const-string v0, "\uff09"

    move-object/from16 v35, v0

    const-string v0, "item_id"

    move-object/from16 v36, v13

    const-string v13, "id"

    move-object/from16 v37, v3

    const-string v3, ""

    if-nez v7, :cond_1b

    if-nez v11, :cond_0

    .line 7
    div-long v16, v1, v24

    div-long v16, v16, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    iget-object v7, v11, Lp/a;->a:Ljava/lang/String;

    :goto_0
    move-object/from16 v38, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v12, v15}, Lcom/sgscq/vpn/w1;->G0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v39, v9

    const-string v9, "121014"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v40, v10

    const-string v10, "0"

    if-nez v9, :cond_1

    move-wide/from16 v41, v1

    move-object/from16 v44, v7

    move-object/from16 v43, v15

    goto/16 :goto_5

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    check-cast v11, Ljava/lang/String;

    move-wide/from16 v41, v1

    .line 9
    invoke-virtual {v12, v11}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "pos"

    move-object/from16 v43, v15

    const-string v15, "equipment_pos"

    move-object/from16 v44, v7

    const/4 v7, 0x0

    .line 10
    invoke-static {v1, v2, v10, v15, v7}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "type"

    const-string v7, "equipment_type"

    const/4 v15, 0x0

    invoke-static {v1, v2, v10, v7, v15}, Lc/a;->g(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_3
    move-object/from16 v44, v7

    move-object/from16 v43, v15

    :cond_4
    if-eqz v11, :cond_5

    const-string v1, "21"

    .line 11
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_6

    const-string v1, "22"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_7

    const-string v1, "23"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    if-eqz v11, :cond_8

    const-string v1, "24"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x4

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-nez v17, :cond_9

    const/4 v1, 0x1

    if-ne v2, v1, :cond_a

    .line 12
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v1

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    :cond_a
    const/4 v7, 0x2

    if-nez v16, :cond_b

    if-ne v2, v7, :cond_b

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v1

    :cond_b
    :goto_3
    if-eqz v17, :cond_c

    if-eqz v16, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v11, v19

    move-wide/from16 v1, v41

    move-object/from16 v15, v43

    move-object/from16 v7, v44

    goto/16 :goto_1

    :cond_d
    move-wide/from16 v41, v1

    move-object/from16 v44, v7

    move-object/from16 v43, v15

    :goto_4
    move-object v11, v9

    :goto_5
    if-eqz v11, :cond_10

    .line 13
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->m0(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_11
    const/4 v2, 0x0

    .line 14
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const-string v9, "is_notice"

    const-string v11, "can_exchange"

    const-string v15, "tag_id"

    move-object/from16 v45, v9

    const-string v9, "vip_level"

    move-object/from16 v46, v10

    const-string v10, "open_time"

    move-object/from16 v47, v11

    const-string v11, "purchase_num"

    move-object/from16 v48, v15

    const-string v15, "currency_type"

    move-object/from16 v49, v9

    const-string v9, "item_price"

    move-object/from16 v50, v10

    const-string v10, "_purchase_key"

    move-object/from16 v51, v11

    const-string v11, "pk_id"

    if-ge v2, v7, :cond_17

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v52, v1

    invoke-virtual {v12, v7}, Lcom/sgscq/vpn/w1;->F0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_12

    move-object/from16 v53, v3

    goto :goto_9

    :cond_12
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v53, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_13

    :goto_9
    move-object/from16 v58, v8

    move-object/from16 v59, v14

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v3, v32

    move-object/from16 v14, v44

    move-object/from16 v44, v5

    move-object/from16 v5, v46

    goto/16 :goto_d

    :cond_13
    move-object/from16 v54, v15

    const-string v15, "name"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v55, v9

    const-string v9, "desc"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v56, v1

    .line 15
    invoke-static {v12, v7}, Lcom/sgscq/vpn/p5;->d0(Lcom/sgscq/vpn/w1;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object/from16 v57, v10

    const-string v10, "preview_item_id"

    invoke-static {v10, v3, v1}, Lcom/sgscq/vpn/p5;->r1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v58, v8

    const-string v8, "legacy_name"

    invoke-static {v8, v15, v1}, Lcom/sgscq/vpn/p5;->r1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "preview_desc"

    invoke-static {v12, v7, v9}, Lcom/sgscq/vpn/p5;->N(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9, v1}, Lcom/sgscq/vpn/p5;->r1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "legacy_desc"

    invoke-static {v15, v9, v1}, Lcom/sgscq/vpn/p5;->r1(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/sgscq/vpn/p1;

    invoke-direct {v9, v10, v8, v1}, Lcom/sgscq/vpn/p1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    move-object/from16 v58, v8

    move-object/from16 v57, v10

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v14}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v16, v12

    move-object/from16 v17, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v15

    move-object/from16 v21, v9

    invoke-static/range {v16 .. v21}, Lcom/sgscq/vpn/p5;->c1(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/p1;

    move-result-object v1

    invoke-static {v12, v7, v15, v9}, Lcom/sgscq/vpn/p5;->d1(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/p1;

    move-result-object v8

    new-instance v10, Lcom/sgscq/vpn/p1;

    iget-object v8, v8, Lcom/sgscq/vpn/p1;->b:Ljava/lang/String;

    invoke-static {v12, v7, v9}, Lcom/sgscq/vpn/p5;->N(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v1, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    invoke-direct {v10, v1, v8, v9}, Lcom/sgscq/vpn/p1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    :goto_a
    add-int/lit8 v1, v2, 0x64

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v12, v7}, Lcom/sgscq/vpn/w1;->y1(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/16 v10, 0x320

    goto :goto_b

    :cond_15
    const/16 v10, 0xc8

    :goto_b
    if-nez v6, :cond_16

    move-object/from16 v59, v14

    goto :goto_c

    :cond_16
    new-instance v15, Lcom/sgscq/vpn/config/k;

    invoke-direct {v15, v6}, Lcom/sgscq/vpn/config/k;-><init>(Lcom/sgscq/vpn/config/i;)V

    move-object/from16 v59, v14

    invoke-virtual {v12, v7}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v15, v10, v14, v8}, Lcom/sgscq/vpn/config/k;->b(ILjava/util/Map;Z)I

    move-result v10

    .line 18
    :goto_c
    invoke-static {v11, v1}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 19
    iget-object v11, v9, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v37

    invoke-interface {v8, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v36

    invoke-interface {v8, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v33

    invoke-interface {v8, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v58

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v44

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":fate_box:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v57

    invoke-interface {v8, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "style_id"

    const-string v11, "7"

    move-object/from16 v15, v56

    invoke-interface {v15, v3, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "9"

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v44, v5

    const-string v5, "style_desc"

    invoke-interface {v15, v5, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "related_id"

    invoke-interface {v15, v5, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, v55

    .line 20
    invoke-static {v8, v5, v3, v10, v15}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v3, v32

    move-object/from16 v5, v54

    .line 21
    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v10, v51

    invoke-interface {v8, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v50

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v49

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v10, v48

    invoke-interface {v8, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v10, v47

    invoke-interface {v8, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v45

    move-object/from16 v5, v46

    invoke-interface {v8, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lcom/sgscq/vpn/p1;->b:Ljava/lang/String;

    iget-object v9, v9, Lcom/sgscq/vpn/p1;->c:Ljava/lang/String;

    invoke-static {v10, v9, v8}, Lcom/sgscq/vpn/l2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v9, v31

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v30

    invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v32, v3

    move-object v10, v5

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v5, v44

    move-object/from16 v1, v52

    move-object/from16 v3, v53

    move-object/from16 v8, v58

    move-object/from16 v44, v14

    move-object/from16 v14, v59

    goto/16 :goto_8

    :cond_17
    move-object/from16 v53, v3

    move-object/from16 v58, v8

    move-object v7, v10

    move-object/from16 v59, v14

    move-object/from16 v3, v32

    move-object/from16 v1, v43

    move-object/from16 v14, v44

    move-object/from16 v2, v47

    move-object/from16 v10, v51

    move-object/from16 v44, v5

    move-object/from16 v32, v6

    move-object v5, v15

    move-object/from16 v43, v31

    move-object/from16 v6, v49

    move-object/from16 v31, v4

    move-object v15, v9

    move-object/from16 v4, v48

    move-object/from16 v9, v50

    .line 22
    invoke-virtual {v12, v1}, Lcom/sgscq/vpn/w1;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/sgscq/vpn/p5;->g1(Lcom/sgscq/vpn/w1;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const/16 v16, 0x0

    move-object/from16 v47, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v2

    move-object/from16 v49, v4

    move/from16 v2, v16

    :goto_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1a

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_18

    goto :goto_f

    :cond_18
    move-object/from16 v50, v8

    move-object/from16 v8, v16

    goto :goto_10

    :cond_19
    :goto_f
    move-object/from16 v50, v8

    move-object v8, v4

    :goto_10
    move-object/from16 v76, v35

    move-object/from16 v35, v1

    move-object/from16 v1, v76

    move-object/from16 v77, v34

    move-object/from16 v34, v6

    move-object/from16 v6, v77

    .line 23
    invoke-static {v6, v8, v1}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v51, v6

    const-string v6, "\u8d2d\u4e70\u540e\u83b7\u5f97\u7f18\u4efd\u6280\u80fd\uff1a"

    .line 24
    invoke-static {v6, v8}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    .line 25
    filled-new-array {v8, v6}, [Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v16, v12

    move-object/from16 v17, v4

    move-object/from16 v19, v4

    invoke-static/range {v16 .. v21}, Lcom/sgscq/vpn/p5;->c1(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/p1;

    move-result-object v6

    add-int/lit16 v8, v2, 0x96

    .line 26
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v52, v1

    .line 27
    invoke-static {v11, v8}, Lc/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    move-object/from16 v16, v11

    .line 28
    iget-object v11, v6, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    invoke-interface {v1, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v27

    invoke-interface {v1, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    const-string v13, ":fate_skill:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x752e

    .line 29
    invoke-static {v1, v7, v11, v13, v15}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v35

    invoke-interface {v1, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v34

    invoke-interface {v1, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v3

    move-object/from16 v3, v49

    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v54, v5

    move-object/from16 v5, v48

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v45

    move-object/from16 v3, v46

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v6, Lcom/sgscq/vpn/p1;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/sgscq/vpn/p1;->c:Ljava/lang/String;

    invoke-static {v3, v6, v1}, Lcom/sgscq/vpn/l2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    move-object/from16 v3, v43

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v26

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object v1, v11

    move-object v6, v13

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v50

    move-object/from16 v34, v51

    move-object/from16 v35, v52

    move-object/from16 v5, v54

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v17, v13

    move-object/from16 v6, v26

    move-object/from16 v51, v34

    move-object/from16 v52, v35

    move-object/from16 v3, v43

    goto :goto_11

    :cond_1b
    move-wide/from16 v41, v1

    move-object/from16 v53, v3

    move-object/from16 v44, v5

    move-object/from16 v32, v6

    move-object/from16 v58, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v38, v11

    move-object/from16 v17, v13

    move-object/from16 v59, v14

    move-object/from16 v47, v15

    move-object/from16 v6, v26

    move-object/from16 v3, v31

    move-object/from16 v51, v34

    move-object/from16 v52, v35

    move-object/from16 v31, v4

    :goto_11
    if-eqz v32, :cond_36

    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/sgscq/vpn/h2;->e:Lcom/sgscq/vpn/config/m;

    if-eqz v1, :cond_36

    .line 31
    iget-object v2, v1, Lcom/sgscq/vpn/config/m;->a:Lcom/sgscq/vpn/config/c;

    if-nez v2, :cond_1c

    goto/16 :goto_20

    .line 32
    :cond_1c
    iget-object v4, v2, Lcom/sgscq/vpn/config/c;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v12, v4}, Lcom/sgscq/vpn/w1;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/sgscq/vpn/p5;->g1(Lcom/sgscq/vpn/w1;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    iget-object v14, v2, Lcom/sgscq/vpn/config/c;->i:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sgscq/vpn/config/b;

    .line 34
    iget-object v9, v8, Lcom/sgscq/vpn/config/b;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v12, v9}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcom/sgscq/vpn/p5;->m0(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v8, v8, Lcom/sgscq/vpn/config/b;->a:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1e
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/sgscq/vpn/config/k;

    move-object/from16 v10, v32

    invoke-direct {v11, v10}, Lcom/sgscq/vpn/config/k;-><init>(Lcom/sgscq/vpn/config/i;)V

    .line 36
    iget-object v7, v2, Lcom/sgscq/vpn/config/c;->c:Ljava/lang/String;

    const-string v8, "special"

    .line 37
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    iget v7, v2, Lcom/sgscq/vpn/config/c;->e:I

    const v8, 0x7fffffff

    if-ge v8, v7, :cond_1f

    goto/16 :goto_18

    :cond_1f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v8, v10, Lcom/sgscq/vpn/config/i;->d:Lcom/sgscq/vpn/t;

    iget-object v7, v8, Lcom/sgscq/vpn/t;->e:Ljava/lang/Object;

    .line 39
    check-cast v7, Lcom/sgscq/vpn/config/e;

    move-object/from16 v43, v3

    .line 40
    iget-object v3, v2, Lcom/sgscq/vpn/config/c;->h:Lcom/sgscq/vpn/config/g;

    if-eqz v3, :cond_21

    move-object/from16 v32, v10

    .line 41
    iget v10, v2, Lcom/sgscq/vpn/config/c;->g:I

    if-lez v10, :cond_20

    move/from16 v16, v10

    .line 42
    iget-object v10, v2, Lcom/sgscq/vpn/config/c;->b:Ljava/lang/String;

    move-object/from16 v18, v10

    .line 43
    iget-object v10, v3, Lcom/sgscq/vpn/config/g;->a:Ljava/lang/String;

    move-object/from16 v19, v10

    .line 44
    iget-object v10, v3, Lcom/sgscq/vpn/config/g;->b:Ljava/lang/String;

    .line 45
    iget v3, v3, Lcom/sgscq/vpn/config/g;->c:I

    move-object/from16 v20, v10

    .line 46
    iget v10, v7, Lcom/sgscq/vpn/config/e;->c:I

    const/16 v21, 0x1

    move-object/from16 v60, v7

    move-object v7, v11

    move-object/from16 v63, v8

    move-object/from16 v61, v28

    move-object/from16 v26, v30

    move-object/from16 v62, v58

    move-object v8, v1

    move-object/from16 v30, v6

    move-object v6, v9

    move-object/from16 v5, v39

    move-object/from16 v28, v43

    move-object v9, v2

    move/from16 v34, v10

    move-object/from16 v64, v40

    move/from16 v10, v21

    move-object/from16 v21, v11

    move-object/from16 v66, v27

    move-object/from16 v65, v38

    move-object/from16 v11, v18

    move-object/from16 v67, v12

    move-object/from16 v12, v19

    move-object/from16 v71, v13

    move-object/from16 v70, v17

    move-object/from16 v68, v29

    move-object/from16 v69, v36

    move-object/from16 v13, v20

    move-object/from16 v19, v14

    move-object/from16 v27, v59

    move v14, v3

    move-object/from16 v73, v15

    move-object/from16 v72, v37

    move-object/from16 v3, v47

    move/from16 v15, v16

    move/from16 v16, v34

    move-wide/from16 v17, v41

    .line 47
    invoke-virtual/range {v7 .. v18}, Lcom/sgscq/vpn/config/k;->d(Lcom/sgscq/vpn/config/m;Lcom/sgscq/vpn/config/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/sgscq/vpn/config/l;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_20
    move-object/from16 v60, v7

    move-object/from16 v63, v8

    goto :goto_13

    :cond_21
    move-object/from16 v60, v7

    move-object/from16 v63, v8

    move-object/from16 v32, v10

    :goto_13
    move-object/from16 v21, v11

    move-object/from16 v67, v12

    move-object/from16 v71, v13

    move-object/from16 v19, v14

    move-object/from16 v73, v15

    move-object/from16 v70, v17

    move-object/from16 v66, v27

    move-object/from16 v61, v28

    move-object/from16 v68, v29

    move-object/from16 v26, v30

    move-object/from16 v69, v36

    move-object/from16 v72, v37

    move-object/from16 v65, v38

    move-object/from16 v5, v39

    move-object/from16 v64, v40

    move-object/from16 v28, v43

    move-object/from16 v3, v47

    move-object/from16 v62, v58

    move-object/from16 v27, v59

    move-object/from16 v30, v6

    move-object v6, v9

    :goto_14
    iget-boolean v7, v2, Lcom/sgscq/vpn/config/c;->f:Z

    if-eqz v7, :cond_27

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_15
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sgscq/vpn/config/b;

    .line 48
    iget-object v8, v7, Lcom/sgscq/vpn/config/b;->a:Ljava/lang/String;

    move-object/from16 v15, v73

    .line 49
    invoke-virtual {v15, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    move-object/from16 v73, v15

    goto :goto_15

    .line 50
    :cond_22
    iget-object v8, v7, Lcom/sgscq/vpn/config/b;->c:Ljava/lang/String;

    const-string v9, "mount"

    .line 51
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    move-object/from16 v14, v63

    .line 52
    iget-object v8, v14, Lcom/sgscq/vpn/t;->d:Ljava/lang/Object;

    .line 53
    check-cast v8, Ljava/util/Map;

    goto :goto_16

    :cond_23
    move-object/from16 v14, v63

    .line 54
    iget-object v8, v14, Lcom/sgscq/vpn/t;->c:Ljava/lang/Object;

    .line 55
    check-cast v8, Ljava/util/Map;

    .line 56
    :goto_16
    iget-object v9, v7, Lcom/sgscq/vpn/config/b;->d:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sgscq/vpn/config/d;

    .line 57
    iget-object v11, v7, Lcom/sgscq/vpn/config/b;->b:Ljava/lang/String;

    .line 58
    iget-object v13, v7, Lcom/sgscq/vpn/config/b;->a:Ljava/lang/String;

    const/16 v16, 0x1

    .line 59
    iget v12, v8, Lcom/sgscq/vpn/config/d;->b:I

    move-object/from16 v10, v60

    .line 60
    iget v9, v10, Lcom/sgscq/vpn/config/e;->e:I

    const/16 v17, 0x3

    move-object/from16 v7, v21

    move-object v8, v1

    move/from16 v18, v9

    move-object v9, v2

    move-object/from16 v74, v10

    move/from16 v10, v17

    move/from16 v17, v12

    move-object v12, v13

    move-object/from16 v75, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-wide/from16 v17, v41

    .line 61
    invoke-virtual/range {v7 .. v18}, Lcom/sgscq/vpn/config/k;->d(Lcom/sgscq/vpn/config/m;Lcom/sgscq/vpn/config/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/sgscq/vpn/config/l;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v73, v20

    move-object/from16 v60, v74

    move-object/from16 v63, v75

    goto :goto_15

    :cond_24
    move-object/from16 v74, v60

    move-object/from16 v75, v63

    if-eqz v4, :cond_27

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_25

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_17

    :cond_26
    const-string v11, ""

    const/4 v14, 0x1

    move-object/from16 v15, v75

    .line 62
    iget-object v7, v15, Lcom/sgscq/vpn/t;->a:Ljava/lang/Object;

    .line 63
    check-cast v7, Lcom/sgscq/vpn/cloud/e0;

    .line 64
    iget v12, v7, Lcom/sgscq/vpn/cloud/e0;->a:I

    move-object/from16 v10, v74

    .line 65
    iget v9, v10, Lcom/sgscq/vpn/config/e;->f:I

    const/16 v16, 0x4

    move-object/from16 v7, v21

    move-object v8, v1

    move/from16 v17, v9

    move-object v9, v2

    move-object/from16 v19, v10

    move/from16 v10, v16

    move/from16 v16, v12

    move-object v12, v13

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-wide/from16 v17, v41

    .line 66
    invoke-virtual/range {v7 .. v18}, Lcom/sgscq/vpn/config/k;->d(Lcom/sgscq/vpn/config/m;Lcom/sgscq/vpn/config/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJ)Lcom/sgscq/vpn/config/l;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v74, v19

    move-object/from16 v75, v20

    goto :goto_17

    :cond_27
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_19

    :cond_28
    :goto_18
    move-object/from16 v32, v10

    move-object/from16 v67, v12

    move-object/from16 v71, v13

    move-object/from16 v70, v17

    move-object/from16 v66, v27

    move-object/from16 v61, v28

    move-object/from16 v68, v29

    move-object/from16 v26, v30

    move-object/from16 v69, v36

    move-object/from16 v72, v37

    move-object/from16 v65, v38

    move-object/from16 v5, v39

    move-object/from16 v64, v40

    move-object/from16 v62, v58

    move-object/from16 v27, v59

    move-object/from16 v28, v3

    move-object/from16 v30, v6

    move-object/from16 v3, v47

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 67
    :goto_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sgscq/vpn/config/l;

    .line 68
    iget v4, v2, Lcom/sgscq/vpn/config/l;->b:I

    .line 69
    iget-object v6, v2, Lcom/sgscq/vpn/config/l;->e:Ljava/lang/String;

    iget-object v7, v2, Lcom/sgscq/vpn/config/l;->f:Ljava/lang/String;

    const-string v8, "\u8d2d\u4e70\u540e\u83b7\u5f97\u8be5\u9650\u65f6\u6b66\u5c06\u9b42\u9b44\u00d730"

    iget-object v9, v2, Lcom/sgscq/vpn/config/l;->d:Ljava/lang/String;

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2b

    iget-object v4, v2, Lcom/sgscq/vpn/config/l;->c:Ljava/lang/String;

    if-eqz v9, :cond_2a

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_29

    goto :goto_1b

    :cond_29
    move-object/from16 v10, v67

    goto :goto_1c

    :cond_2a
    :goto_1b
    move-object/from16 v10, v67

    invoke-virtual {v10, v4}, Lcom/sgscq/vpn/w1;->R0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1c
    new-instance v11, Lcom/sgscq/vpn/p1;

    const-string v12, "\u9650\u65f6\u6b66\u5c0630\u9b42\u793c\u5305\uff08"

    move-object/from16 v13, v52

    .line 70
    invoke-static {v12, v9, v13}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-direct {v11, v4, v9, v8}, Lcom/sgscq/vpn/p1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    move-object v12, v11

    move-object/from16 v9, v51

    move-object/from16 v14, v53

    move-object/from16 v11, v61

    move-object/from16 v4, v68

    goto/16 :goto_1e

    :cond_2b
    move-object/from16 v13, v52

    move-object/from16 v10, v67

    const/4 v11, 0x3

    if-ne v4, v11, :cond_2e

    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    invoke-virtual {v10, v7}, Lcom/sgscq/vpn/w1;->A0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    :cond_2d
    iget-object v4, v2, Lcom/sgscq/vpn/config/l;->f:Ljava/lang/String;

    .line 73
    iget-object v11, v2, Lcom/sgscq/vpn/config/l;->e:Ljava/lang/String;

    const-string v12, "\u7f18\u4efd\u88c5\u5907\u6574\u4ef6\uff08"

    .line 74
    invoke-static {v12, v9, v13}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v12, "\u8d2d\u4e70\u540e\u76f4\u63a5\u83b7\u5f97\u7f18\u4efd\u88c5\u5907\u6574\u4ef6\uff1a"

    .line 75
    invoke-static {v12, v9}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 76
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v16, v10

    move-object/from16 v17, v4

    move-object/from16 v19, v11

    invoke-static/range {v16 .. v21}, Lcom/sgscq/vpn/p5;->c1(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/p1;

    move-result-object v11

    goto :goto_1d

    :cond_2e
    const/4 v9, 0x4

    if-ne v4, v9, :cond_2f

    .line 77
    invoke-virtual {v10, v7}, Lcom/sgscq/vpn/w1;->m1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, v51

    .line 78
    invoke-static {v9, v4, v13}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v11, "\u8d2d\u4e70\u540e\u76f4\u63a5\u83b7\u5f97\u7f18\u4efd\u6280\u80fd\uff1a"

    .line 79
    invoke-static {v11, v4}, Lc/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v11, v61

    move-object/from16 v4, v68

    .line 80
    filled-new-array {v11, v4}, [Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v21}, Lcom/sgscq/vpn/p5;->c1(Lcom/sgscq/vpn/w1;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/p1;

    move-result-object v12

    move-object/from16 v14, v53

    goto :goto_1e

    :cond_2f
    move-object/from16 v9, v51

    move-object/from16 v11, v61

    move-object/from16 v4, v68

    .line 81
    new-instance v12, Lcom/sgscq/vpn/p1;

    move-object/from16 v14, v53

    invoke-direct {v12, v6, v14, v14}, Lcom/sgscq/vpn/p1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1e
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v16, v1

    iget-object v1, v12, Lcom/sgscq/vpn/p1;->a:Ljava/lang/String;

    move-object/from16 v68, v4

    move-object/from16 v4, v70

    invoke-interface {v15, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget v1, v2, Lcom/sgscq/vpn/config/l;->b:I

    .line 84
    invoke-static {v1}, La/b0;->c(I)I

    move-result v1

    move-object/from16 v17, v0

    const-string v0, "item_type"

    if-eqz v1, :cond_33

    const/4 v8, 0x1

    if-eq v1, v8, :cond_32

    const/4 v6, 0x2

    if-eq v1, v6, :cond_31

    const/4 v6, 0x3

    if-ne v1, v6, :cond_30

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v66

    invoke-interface {v15, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u7f18\u4efd\u6280\u80fd\u793c\u5305"

    const-string v8, "\u8d2d\u4e70\u540e\u76f4\u63a5\u83b7\u5f97\u5bf9\u5e94\u7f18\u4efd\u6280\u80fd"

    move-object/from16 v59, v27

    move-object/from16 v7, v31

    move-object/from16 v18, v72

    move-object/from16 v27, v1

    move-object v1, v8

    move-object/from16 v8, v33

    goto/16 :goto_1f

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported limited product type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v8, v27

    move-object/from16 v1, v66

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v62

    invoke-interface {v15, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "\u7f18\u4efd\u88c5\u5907\u6574\u4ef6"

    const-string v7, "\u8d2d\u4e70\u540e\u76f4\u63a5\u83b7\u5f97\u5bf9\u5e94\u7f18\u4efd\u88c5\u5907\u6574\u4ef6"

    move-object/from16 v27, v1

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v59, v8

    move-object/from16 v7, v31

    move-object/from16 v8, v33

    move-object/from16 v18, v72

    goto/16 :goto_1f

    :cond_32
    move-object/from16 v8, v27

    move-object/from16 v1, v62

    move-object/from16 v27, v66

    const/16 v18, 0x5

    move-object/from16 v59, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v8, v72

    invoke-interface {v15, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v37, v8

    move-object/from16 v8, v69

    invoke-interface {v15, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v44

    invoke-interface {v15, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v33

    invoke-interface {v15, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "\u7f18\u4efd\u88c5\u5907\u793c\u76d2"

    const-string v7, "\u8d2d\u4e70\u540e\u83b7\u5f97\u5bf9\u5e94\u7f18\u4efd\u88c5\u5907\u793c\u76d2"

    move-object v1, v7

    move-object/from16 v18, v37

    move-object v7, v0

    move-object v0, v6

    goto :goto_1f

    :cond_33
    move-object/from16 v19, v8

    move-object/from16 v6, v27

    move-object/from16 v7, v31

    move-object/from16 v8, v33

    move-object/from16 v1, v62

    move-object/from16 v27, v66

    move-object/from16 v18, v72

    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v2, Lcom/sgscq/vpn/config/l;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v59, v6

    const-string v6, "num"

    invoke-interface {v15, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "item_num"

    invoke-interface {v15, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, v2, Lcom/sgscq/vpn/config/l;->f:Ljava/lang/String;

    const-string v33, "item_id"

    const-string v35, "num"

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, "item_num"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v39, "type"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v34, v1

    filled-new-array/range {v33 .. v40}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "add_list"

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u9650\u65f6\u6b66\u5c0630\u9b42\u793c\u5305"

    move-object/from16 v1, v19

    :goto_1f
    invoke-static {v0, v1, v15}, Lcom/sgscq/vpn/l2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 87
    iget-object v0, v12, Lcom/sgscq/vpn/p1;->b:Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v12, Lcom/sgscq/vpn/p1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v15}, Lcom/sgscq/vpn/l2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_34
    new-instance v0, Lcom/sgscq/vpn/k2;

    invoke-direct {v0, v2, v15}, Lcom/sgscq/vpn/k2;-><init>(Lcom/sgscq/vpn/config/l;Ljava/util/LinkedHashMap;)V

    move-object/from16 v1, v71

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v70, v4

    move-object/from16 v31, v7

    move-object/from16 v33, v8

    move-object/from16 v51, v9

    move-object/from16 v67, v10

    move-object/from16 v61, v11

    move-object/from16 v52, v13

    move-object/from16 v53, v14

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    move-object/from16 v72, v18

    move-object/from16 v66, v27

    move-object/from16 v27, v59

    goto/16 :goto_1a

    :cond_35
    move-object/from16 v14, v53

    move-object/from16 v1, v71

    move-object v0, v1

    goto :goto_21

    :cond_36
    :goto_20
    move-object/from16 v28, v3

    move-object/from16 v26, v30

    move-object/from16 v65, v38

    move-object/from16 v5, v39

    move-object/from16 v64, v40

    move-object/from16 v3, v47

    move-object/from16 v14, v53

    move-object/from16 v30, v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_21
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v7, v14

    move-object/from16 v2, v65

    goto :goto_23

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v65

    if-nez v2, :cond_38

    div-long v4, v41, v24

    div-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_38
    iget-object v4, v2, Lp/a;->a:Ljava/lang/String;

    :goto_22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v64

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_23
    const-wide/16 v3, 0x0

    if-nez v2, :cond_39

    move-wide v8, v3

    goto :goto_24

    :cond_39
    iget-wide v5, v2, Lp/a;->e:J

    move-wide v8, v5

    :goto_24
    if-nez v2, :cond_3a

    move-wide v10, v3

    goto :goto_25

    :cond_3a
    iget-wide v1, v2, Lp/a;->f:J

    move-wide v10, v1

    :goto_25
    new-instance v12, Lcom/sgscq/vpn/j2;

    move-object v1, v12

    move-object/from16 v2, v28

    move-object/from16 v3, v26

    move-object/from16 v4, v30

    move-object v5, v0

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v11}, Lcom/sgscq/vpn/j2;-><init>(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/List;Lcom/sgscq/vpn/config/i;Ljava/lang/String;JJ)V

    return-object v12
.end method
