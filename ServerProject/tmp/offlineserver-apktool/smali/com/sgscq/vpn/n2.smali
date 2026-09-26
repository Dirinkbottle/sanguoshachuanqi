.class public final synthetic Lcom/sgscq/vpn/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/x4;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sgscq/vpn/n2;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/sgscq/vpn/q4;)Ljava/util/LinkedHashMap;
    .locals 64

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v3, v1, Lcom/sgscq/vpn/q4;->c:Ljava/lang/String;

    move-object/from16 v6, p0

    iget v4, v6, Lcom/sgscq/vpn/n2;->a:I

    const-string v5, "pk_id"

    const-string v7, "item_id"

    const-string v15, "mail_list"

    const-string v14, "email_list"

    const-string v13, "mail_id"

    packed-switch v4, :pswitch_data_0

    move-object v4, v0

    move-object/from16 v61, v8

    move-object v2, v13

    move-object v0, v14

    move-object v6, v15

    move-object v8, v1

    goto/16 :goto_d

    .line 2
    :pswitch_0
    sget-object v4, Lcom/sgscq/vpn/handler/x0;->c:Ljava/util/List;

    const-string v4, "recharge_grant"

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "order_id"

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/q4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sgscq/vpn/handler/x0;->o0(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    const-string v12, "already_completed"

    const-string v11, "gold"

    if-eqz v3, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v11, v2}, Lcom/sgscq/vpn/q4;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto/16 :goto_c

    :cond_0
    const-string v3, "rmb"

    invoke-virtual {v1, v3, v2}, Lcom/sgscq/vpn/q4;->b(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v1, v11, v2}, Lcom/sgscq/vpn/q4;->b(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "product_id"

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/q4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v32, v4

    const-string v4, "first_double"

    iget-object v6, v1, Lcom/sgscq/vpn/q4;->d:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v48, v8

    const-string v8, "first_recharge_double_"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object/from16 v48, v8

    :goto_0
    const-string v4, "enable_monthly_card"

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "super_monthly_card"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x4e

    const-string v9, "charge_"

    if-ne v10, v8, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "monthly_card"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, 0x1e

    if-ne v10, v8, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    const/16 v3, 0x64

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v3, 0x12c

    .line 5
    :goto_2
    invoke-static {}, Lcom/sgscq/vpn/c7;->b()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_start_day"

    move-object/from16 v16, v11

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v9, "_last_claim_day"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v8, "_claimed_days"

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v11, v9, v0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v9

    move-object/from16 v17, v12

    const-string v12, "_total_days"

    move-object/from16 v18, v7

    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "_daily_gold"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object/from16 v18, v7

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    :goto_3
    const-string v3, "totalRecharge"

    const/4 v4, 0x0

    .line 6
    invoke-static {v4, v3, v0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user_charge_count"

    invoke-static {v4, v3, v0}, Lcom/sgscq/vpn/handler/x0;->B0(ILjava/lang/String;Ljava/util/Map;)I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v9}, Lcom/sgscq/vpn/handler/x0;->J(I)I

    move-result v3

    sget-object v7, Lcom/sgscq/vpn/handler/x0;->e:[I

    const/16 v8, 0xf

    if-lt v3, v8, :cond_8

    const/16 v3, 0xe

    aget v3, v7, v3

    goto :goto_4

    :cond_8
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget v3, v7, v3

    .line 8
    :goto_4
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "current_charge_gold"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "count_charge_gold"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v9}, Lcom/sgscq/vpn/handler/x0;->J(I)I

    move-result v3

    const-string v4, "user_vip_level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "vip_level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "vipLevel"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v13}, Lcom/sgscq/vpn/q4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "mail_time_ms"

    .line 10
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    :goto_5
    move-wide v11, v3

    goto :goto_7

    :cond_9
    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :goto_6
    iget-wide v3, v1, Lcom/sgscq/vpn/q4;->e:J

    goto :goto_5

    .line 11
    :goto_7
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_b

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_b
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_c

    check-cast v3, Ljava/util/List;

    goto :goto_8

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/util/Map;

    if-eqz v7, :cond_d

    check-cast v4, Ljava/util/Map;

    .line 12
    invoke-static {v4, v5, v8}, Lc/a;->A(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 13
    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    move/from16 v55, v2

    move/from16 v58, v10

    move-object/from16 v57, v16

    move-object/from16 v56, v17

    move-object/from16 v0, v32

    goto/16 :goto_9

    .line 14
    :cond_e
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "Asia/Shanghai"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v19, "id"

    const-string v20, "600034"

    const-string v21, "item_num"

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v23, "num"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "item_type"

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const-string v27, "type"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "600034"

    move-object/from16 v7, v18

    invoke-static {v7, v5, v4}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\u5145\u503c \u00a5"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u7684 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u5143\u5b9d\u5df2\u5230\u8d26\uff0c\u8bf7\u9886\u53d6\u9644\u4ef6\u3002\n\u5145\u503c\u65f6\u95f4\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    const-string v3, "email_id"

    const-string v5, "id"

    const-string v7, "pk_id"

    const-string v9, "mail_type"

    const-string v18, "gift"

    move/from16 v55, v2

    move v2, v10

    move-object/from16 v10, v18

    const-string v18, "email_type"

    move-wide/from16 v34, v11

    move-object/from16 v12, v16

    move-object/from16 v11, v18

    const-string v16, "gift"

    move-object/from16 v57, v12

    move-object/from16 v56, v17

    move-object/from16 v12, v16

    const-string v16, "origin_mail_type"

    move/from16 v58, v2

    move-object v2, v13

    move-object/from16 v13, v16

    const-string v16, "pay"

    move-object v1, v14

    move-object/from16 v14, v16

    const-string v16, "title"

    move-object/from16 v59, v15

    move-object/from16 v15, v16

    const-string v16, "\u5145\u503c\u5230\u8d26"

    const-string v17, "email_title"

    const-string v18, "\u5145\u503c\u5230\u8d26"

    const-string v19, "content"

    const-string v21, "email_content"

    const-string v23, "sender"

    const-string v24, "\u7cfb\u7edf"

    const-string v25, "email_sender"

    const-string v26, "\u7cfb\u7edf"

    const-string v27, "email_sender_nickname"

    const-string v28, "\u7cfb\u7edf"

    const-string v29, "from_user"

    const-string v30, "\u7cfb\u7edf"

    const-string v31, "email_time_offset"

    const-string v33, "send_time"

    const-wide/16 v36, 0x3e8

    move-object/from16 v60, v1

    div-long v0, v34, v36

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v35, "create_time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v37, "time"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v39, "expire_time"

    const v1, 0x278d00

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    const-string v41, "is_read"

    sget-object v44, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v42, v44

    const-string v43, "is_accepted"

    const-string v45, "is_attach_get"

    const-string v46, "0"

    const-string v47, "status"

    const-string v49, "reward_list"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v50

    const-string v51, "reward"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v52

    const-string v53, "rewards"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v54

    move-object/from16 v0, v32

    move-object v4, v8

    move-object v1, v6

    move-object v6, v8

    move-object/from16 v62, v8

    move-object/from16 v61, v48

    move-object/from16 v32, v61

    filled-new-array/range {v3 .. v54}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v62

    invoke-static {v2, v4, v3}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v4, p1

    move-object/from16 v2, v60

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v59

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    const-string v1, "completed_recharge_orders"

    .line 16
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_f

    check-cast v2, Ljava/util/List;

    goto :goto_a

    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "day"

    move-object/from16 v8, p2

    invoke-virtual {v8, v1}, Lcom/sgscq/vpn/q4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "daily_recharge_day"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "daily_rmb_used_after"

    move/from16 v2, v58

    invoke-virtual {v8, v1, v2}, Lcom/sgscq/vpn/q4;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "daily_recharge_rmb_used"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    const-string v1, "pending_recharge_orders"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_11

    goto :goto_b

    :cond_11
    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_12
    :goto_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v57

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v56

    invoke-static {v2, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected recharge event kind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_d
    const-string v1, "mail_claim"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v8, v2}, Lcom/sgscq/vpn/q4;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "email_id"

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "id"

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    filled-new-array {v3, v9, v11, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/sgscq/vpn/y2;->u1(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    move-object/from16 v60, v0

    const-string v0, "rewards"

    move-object/from16 v59, v6

    const-string v6, "reward"

    move-object/from16 p2, v3

    const-string v3, "is_attach_get"

    const-string v4, "status"

    move-object/from16 v18, v7

    const-string v7, "is_accepted"

    move-object/from16 v16, v13

    const-string v13, "1"

    move-object/from16 v17, v12

    const-string v12, "reward_list"

    move-object/from16 v19, v11

    const-string v11, ""

    if-eqz v15, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v20, v14

    instance-of v14, v15, Ljava/util/Map;

    if-nez v14, :cond_14

    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move-object v6, v10

    move-object/from16 v2, v16

    move-object/from16 v8, v17

    move-object v10, v5

    move-object/from16 v5, v19

    goto/16 :goto_14

    :cond_14
    move-object v14, v15

    check-cast v14, Ljava/util/Map;

    invoke-interface {v14, v5, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v2, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v23, v2

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v25, v10

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v5, v2, v8, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v1, v14}, Lcom/sgscq/vpn/y2;->c3(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v5, 0x1

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    if-nez v5, :cond_17

    goto/16 :goto_13

    :cond_17
    invoke-static {v14}, Lcom/sgscq/vpn/y2;->n3(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    if-nez v5, :cond_18

    invoke-static {v1, v2}, Lcom/sgscq/vpn/y2;->c3(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_13

    :cond_18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_13

    .line 21
    :cond_19
    invoke-virtual {v2, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ljava/util/List;

    if-nez v8, :cond_1a

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_1a
    instance-of v8, v5, Ljava/util/List;

    if-nez v8, :cond_1b

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_1b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    instance-of v10, v5, Ljava/util/List;

    if-nez v10, :cond_1c

    goto :goto_12

    :cond_1c
    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v14, v10, Ljava/util/Map;

    if-eqz v14, :cond_1d

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 22
    :cond_1e
    :goto_12
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v5, v19

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v22

    invoke-virtual {v2, v10, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, v24

    invoke-virtual {v2, v15, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    invoke-virtual {v2, v6, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, v25

    invoke-virtual {v2, v6, v11}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v14, v0, v15, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_15

    :cond_1f
    :goto_13
    move-object/from16 v2, v16

    move-object/from16 v8, v17

    move-object/from16 v5, v19

    move-object/from16 v10, v22

    move-object/from16 v6, v25

    :cond_20
    :goto_14
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move-object v13, v2

    move-object v11, v5

    move-object v12, v8

    move-object v5, v10

    move-object/from16 v7, v18

    move-object/from16 v14, v20

    move-object/from16 v2, v23

    move-object/from16 v8, v24

    move-object/from16 v0, v60

    move-object v10, v6

    move-object/from16 v6, v59

    goto/16 :goto_e

    :cond_21
    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move-object/from16 v2, v16

    move-object/from16 v8, v17

    move-object/from16 v17, v6

    move-object v6, v10

    move-object v10, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v0

    :goto_15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v14, "add_list"

    const-string v15, "msg"

    move-object/from16 v16, v11

    const-string v11, "result"

    move-object/from16 v22, v10

    const-string v10, "code"

    move-object/from16 v20, v2

    const-string v2, "ret"

    move-object/from16 v21, v8

    const-string v8, "error_code"

    const/16 v30, -0x1

    if-eqz v1, :cond_22

    move/from16 v25, v30

    move-object/from16 v26, v0

    move-object/from16 v27, v8

    move/from16 v28, v30

    move-object/from16 v29, v2

    move-object/from16 v31, v10

    .line 23
    invoke-static/range {v25 .. v31}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\u90ae\u4ef6\u4e0d\u5b58\u5728\u6216\u5df2\u9886\u53d6"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1d

    :cond_22
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_16
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    move-object/from16 v27, v9

    const-string v9, "num"

    move-object/from16 v28, v3

    const-string v3, "item_num"

    if-eqz v26, :cond_29

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v29, v13

    move-object/from16 v13, v26

    check-cast v13, Ljava/util/Map;

    move-object/from16 v26, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v7

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/sgscq/vpn/y2;->h1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v4

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/sgscq/vpn/y2;->h1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v32, v3

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    if-gtz v3, :cond_23

    goto/16 :goto_1b

    :cond_23
    invoke-static {v7}, Lcom/sgscq/vpn/y2;->t2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_1a

    :cond_24
    invoke-static {v7, v13}, Lcom/sgscq/vpn/y2;->E1(Ljava/lang/String;Ljava/util/Map;)I

    move-result v3

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->D1(ILjava/util/Map;)I

    move-result v4

    const/4 v13, 0x5

    if-ne v4, v13, :cond_25

    goto/16 :goto_1a

    :cond_25
    invoke-static {v7, v3}, Lcom/sgscq/vpn/y2;->Z3(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    packed-switch v4, :pswitch_data_1

    :pswitch_1
    goto :goto_18

    :pswitch_2
    invoke-virtual {v1, v7}, Lcom/sgscq/vpn/w1;->c1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v4, "item_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_26

    invoke-static {v7}, Lcom/sgscq/vpn/y2;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->X0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->X0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_4
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->I0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_5
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_6
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->k1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_7
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->z0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_26

    goto :goto_17

    :pswitch_8
    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->J0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {v1, v3}, Lcom/sgscq/vpn/w1;->C1(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_17
    const/4 v3, 0x1

    goto :goto_19

    :cond_26
    :goto_18
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_27

    const-string v1, "\u90ae\u4ef6\u9644\u4ef6\u914d\u7f6e\u65e0\u6548\uff1a"

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_27
    :goto_1a
    move-object/from16 v7, v18

    move-object/from16 v4, v26

    move-object/from16 v9, v27

    move-object/from16 v3, v28

    move-object/from16 v13, v29

    move-object/from16 v18, v31

    goto/16 :goto_16

    :cond_28
    :goto_1b
    const-string v1, "\u90ae\u4ef6\u9644\u4ef6\u914d\u7f6e\u65e0\u6548"

    goto :goto_1c

    :cond_29
    move-object/from16 v32, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v13

    move-object/from16 v31, v18

    move-object/from16 v18, v7

    move-object/from16 v1, v16

    .line 26
    :goto_1c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    move/from16 v25, v30

    move-object/from16 v26, v0

    move-object/from16 v27, v8

    move/from16 v28, v30

    move-object/from16 v29, v2

    move-object/from16 v31, v10

    .line 27
    invoke-static/range {v25 .. v31}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    goto/16 :goto_47

    :cond_2a
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "is_read"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v18

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v13, v26

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v5

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "accepted_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v7

    instance-of v7, v5, Ljava/util/Map;

    if-eqz v7, :cond_2b

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2b
    invoke-static {v3}, Lcom/sgscq/vpn/y2;->C2(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v3, v20

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2c

    move-object/from16 v5, v16

    .line 29
    :cond_2c
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2d

    move-object/from16 v26, v3

    move-object/from16 v20, v13

    move-object/from16 v25, v14

    goto :goto_21

    :cond_2d
    const-string v7, "claimed_gift_ids"

    move-object/from16 v20, v13

    move-object/from16 v25, v14

    move-object/from16 v13, p1

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v26, v3

    instance-of v3, v14, Ljava/util/List;

    if-eqz v3, :cond_2e

    check-cast v14, Ljava/util/List;

    goto :goto_1f

    :cond_2e
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_1f
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v33, v3

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_22

    :cond_2f
    move-object/from16 v3, v33

    goto :goto_20

    :cond_30
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_31
    move-object/from16 v25, v14

    move-object/from16 v26, v20

    move-object/from16 v20, v13

    :goto_21
    move-object/from16 v13, p1

    :goto_22
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v18

    move-object/from16 v18, v21

    move-object/from16 v14, v25

    move-object/from16 v21, v4

    move-object/from16 v63, v26

    move-object/from16 v26, v20

    move-object/from16 v20, v63

    goto/16 :goto_1e

    :cond_32
    move-object/from16 v13, p1

    move-object/from16 v1, p2

    move-object/from16 v25, v14

    move-object/from16 v26, v20

    move-object/from16 v4, v21

    .line 30
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v3, v61

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "success"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "122"

    invoke-static {v2, v13}, Lcom/sgscq/vpn/handler/p;->e(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Lcom/sgscq/vpn/w2;

    invoke-direct {v2}, Lcom/sgscq/vpn/w2;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v2, Lcom/sgscq/vpn/w2;->a:Ljava/util/ArrayList;

    const-string v7, "Item"

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    move-object/from16 v8, v31

    .line 31
    filled-new-array {v8, v6}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/sgscq/vpn/y2;->h1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v32

    filled-new-array {v11, v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/sgscq/vpn/y2;->h1(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    move-result v14

    invoke-static {v10, v4}, Lcom/sgscq/vpn/y2;->E1(Ljava/lang/String;Ljava/util/Map;)I

    move-result v15

    invoke-static {v15, v4}, Lcom/sgscq/vpn/y2;->D1(ILjava/util/Map;)I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_45

    if-gtz v14, :cond_33

    goto/16 :goto_39

    :cond_33
    invoke-static {v10}, Lcom/sgscq/vpn/y2;->t2(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_37

    const-string v7, "600026"

    .line 32
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    const-string v7, "600002"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_24

    :cond_34
    const/4 v7, 0x0

    goto :goto_25

    :cond_35
    :goto_24
    const/4 v7, 0x1

    :goto_25
    if-eqz v7, :cond_36

    move-object/from16 v18, v8

    int-to-long v7, v14

    .line 33
    invoke-static {v7, v8, v13}, Lcom/sgscq/vpn/p5;->b(JLjava/util/Map;)V

    move-object/from16 p2, v3

    goto :goto_26

    :cond_36
    move-object/from16 v18, v8

    const-string v7, "user_gold"

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 p2, v3

    const/4 v3, 0x0

    invoke-static {v8, v3}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    move-result v3

    add-int/2addr v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sgscq/vpn/w2;->c:Z

    invoke-static {v10, v14, v15, v4}, Lcom/sgscq/vpn/y2;->c0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object v3

    goto :goto_27

    :cond_37
    move-object/from16 p2, v3

    move-object/from16 v18, v8

    const/4 v3, 0x5

    if-ne v4, v3, :cond_39

    invoke-static {v7, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    if-nez v15, :cond_38

    const/4 v15, 0x1

    :cond_38
    invoke-static {v13, v10, v14, v15}, Lcom/sgscq/vpn/y2;->j(Ljava/util/Map;Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v8

    invoke-static {v4, v13}, Lcom/sgscq/vpn/y2;->E0(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2, v7, v8}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v15, v3, v10, v8}, Lcom/sgscq/vpn/y2;->W(IIILjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    :goto_27
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_39
    invoke-static {v10, v15}, Lcom/sgscq/vpn/y2;->Z3(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "GeneralSoul"

    const-string v8, "Skill"

    packed-switch v4, :pswitch_data_2

    :goto_28
    :pswitch_9
    move-object/from16 v21, v0

    move-object/from16 v28, v6

    :goto_29
    move-object/from16 v27, v9

    move-object/from16 v20, v11

    :goto_2a
    move-object/from16 v35, v12

    move-object/from16 v6, v16

    move-object/from16 v11, v22

    goto/16 :goto_3a

    .line 34
    :pswitch_a
    invoke-static {v10}, Lcom/sgscq/vpn/y2;->F1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const-string v7, "skin_list"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v11

    instance-of v11, v8, Ljava/util/List;

    if-eqz v11, :cond_3a

    check-cast v8, Ljava/util/List;

    goto :goto_2b

    .line 35
    :cond_3a
    invoke-static {v3, v7}, Lc/a;->o(Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 36
    :goto_2b
    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :pswitch_b
    move-object/from16 v20, v11

    .line 37
    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :cond_3b
    :goto_2c
    const-string v7, "Goddess"

    invoke-virtual {v2, v7, v3}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v21, v0

    move-object/from16 v35, v12

    move-object/from16 v11, v22

    goto/16 :goto_33

    :pswitch_c
    move-object/from16 v20, v11

    const-string v4, "Gems"

    invoke-static {v14, v3, v13}, Lcom/sgscq/vpn/y2;->h(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->T0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v14, v3, v4}, Lcom/sgscq/vpn/y2;->U(ILjava/lang/String;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    goto :goto_2d

    :pswitch_d
    move-object/from16 v20, v11

    .line 38
    invoke-static {v14, v10, v13}, Lcom/sgscq/vpn/cloud/m0;->c1(ILjava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "EquipmentPiece"

    .line 39
    invoke-virtual {v2, v4, v3}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v14, v10, v3}, Lcom/sgscq/vpn/y2;->S(ILjava/lang/String;Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    :goto_2d
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v0

    move-object/from16 v28, v6

    move-object/from16 v27, v9

    goto :goto_2a

    :pswitch_e
    move-object/from16 v20, v11

    const-string v7, "SkillPiece"

    .line 40
    invoke-static {v7, v13}, Lcom/sgscq/vpn/y2;->F0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v11

    move-object/from16 v11, v21

    check-cast v11, Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v12

    const-string v12, "skill_id"

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    move-object/from16 v0, v21

    move-object/from16 v11, v27

    move-object/from16 v12, v35

    goto :goto_2e

    :cond_3c
    const-string v0, "skill_piece_num"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v9, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/sgscq/vpn/y2;->C3(Ljava/lang/Object;I)I

    move-result v3

    add-int/2addr v3, v14

    .line 41
    invoke-static {v3, v11, v9, v3, v0}, Lc/a;->t(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v11

    move-object/from16 v11, v22

    goto :goto_2f

    :cond_3d
    move-object/from16 v21, v0

    move-object/from16 v35, v12

    const-string v27, "id"

    const-string v29, "skill_id"

    const-string v31, "num"

    .line 42
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v33, "skill_piece_num"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v28, v3

    move-object/from16 v30, v3

    filled-new-array/range {v27 .. v34}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v11, v22

    invoke-static {v11, v3, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_2f
    invoke-virtual {v2, v7, v0}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_33

    :pswitch_f
    move-object/from16 v21, v0

    move-object/from16 v20, v11

    move-object/from16 v35, v12

    move-object/from16 v11, v22

    invoke-static {v14, v3, v13}, Lcom/sgscq/vpn/w1;->k(ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->c1(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_31

    :pswitch_10
    move-object/from16 v21, v0

    move-object/from16 v20, v11

    move-object/from16 v35, v12

    move-object/from16 v11, v22

    const/4 v0, 0x0

    :goto_30
    if-ge v0, v14, :cond_3e

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->p(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3e
    :goto_31
    invoke-static {v3, v14, v15, v4}, Lcom/sgscq/vpn/y2;->c0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_34

    :pswitch_11
    move-object/from16 v21, v0

    move-object/from16 v20, v11

    move-object/from16 v35, v12

    move-object/from16 v11, v22

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v14, :cond_3f

    const/4 v7, 0x0

    invoke-static {v7, v3, v13}, Lcom/sgscq/vpn/y2;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)I

    move-result v7

    const-string v8, "Equipment"

    invoke-static {v8, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Lcom/sgscq/vpn/y2;->S0(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3f
    :goto_33
    invoke-static {v10, v14, v15, v4}, Lcom/sgscq/vpn/y2;->c0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_34
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v6

    move-object/from16 v27, v9

    move-object/from16 v6, v16

    goto/16 :goto_3a

    :pswitch_12
    move-object/from16 v21, v0

    move-object/from16 v20, v11

    move-object/from16 v35, v12

    move-object/from16 v11, v22

    const-string v0, "General"

    .line 44
    invoke-static {v0, v13}, Lcom/sgscq/vpn/y2;->F0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    invoke-static {v8, v13}, Lcom/sgscq/vpn/y2;->F0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    invoke-static {v7, v13}, Lcom/sgscq/vpn/y2;->F0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v14, :cond_44

    .line 45
    invoke-static {v0, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_36
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_41

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v27, v9

    move-object/from16 v9, v22

    check-cast v9, Ljava/util/Map;

    move-object/from16 v22, v12

    const-string v12, "general_id"

    move-object/from16 v28, v6

    move-object/from16 v6, v16

    .line 46
    invoke-static {v9, v12, v6, v3}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_40

    goto :goto_37

    :cond_40
    move-object/from16 v16, v6

    move-object/from16 v12, v22

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    goto :goto_36

    :cond_41
    move-object/from16 v28, v6

    move-object/from16 v27, v9

    move-object/from16 v6, v16

    const/4 v9, 0x0

    .line 47
    :goto_37
    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    if-nez v9, :cond_42

    if-eqz v12, :cond_42

    invoke-virtual {v2, v0, v12}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v8, v13}, Lcom/sgscq/vpn/w1;->f0(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v12, v11, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/sgscq/vpn/y2;->S0(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_38

    :cond_42
    if-eqz v9, :cond_43

    invoke-static {v3, v13}, Lcom/sgscq/vpn/y2;->c1(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lcom/sgscq/vpn/w2;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_43
    :goto_38
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v6

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    goto :goto_35

    :cond_44
    move-object/from16 v28, v6

    move-object/from16 v27, v9

    move-object/from16 v6, v16

    const/4 v0, 0x1

    invoke-static {v10, v14, v15, v0}, Lcom/sgscq/vpn/y2;->c0(Ljava/lang/String;III)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_45
    :goto_39
    move-object/from16 v21, v0

    move-object/from16 p2, v3

    move-object/from16 v28, v6

    move-object/from16 v18, v8

    goto/16 :goto_29

    :goto_3a
    move-object/from16 v3, p2

    move-object/from16 v16, v6

    move-object/from16 v22, v11

    move-object/from16 v31, v18

    move-object/from16 v32, v20

    move-object/from16 v0, v21

    move-object/from16 v9, v27

    move-object/from16 v6, v28

    move-object/from16 v12, v35

    goto/16 :goto_23

    :cond_46
    move-object/from16 v21, v0

    move-object/from16 v28, v6

    move-object/from16 v35, v12

    move-object/from16 v6, v16

    move-object/from16 v11, v22

    move-object/from16 v0, v59

    .line 48
    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "mail_type"

    if-nez v3, :cond_50

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_47
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/util/Map;

    if-eqz v10, :cond_47

    check-cast v9, Ljava/util/Map;

    move-object/from16 v10, v23

    .line 49
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    move-object/from16 v12, v24

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4c

    move-object/from16 v14, v28

    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4b

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4b

    move-object/from16 v15, v17

    invoke-interface {v9, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    move/from16 p2, v3

    if-nez v16, :cond_4a

    move-object/from16 v3, v19

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_49

    move-object/from16 v16, v8

    const-string v8, "attach_list"

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "attachment"

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    const-string v8, "attachments"

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    goto :goto_3e

    :cond_48
    const/4 v8, 0x0

    goto :goto_3f

    :cond_49
    move-object/from16 v16, v8

    goto :goto_3e

    :cond_4a
    move-object/from16 v16, v8

    goto :goto_3c

    :cond_4b
    move/from16 p2, v3

    move-object/from16 v16, v8

    move-object/from16 v15, v17

    :goto_3c
    move-object/from16 v3, v19

    goto :goto_3e

    :cond_4c
    move/from16 p2, v3

    move-object/from16 v16, v8

    move-object/from16 v15, v17

    move-object/from16 v3, v19

    goto :goto_3d

    :cond_4d
    move/from16 p2, v3

    move-object/from16 v16, v8

    move-object/from16 v15, v17

    move-object/from16 v3, v19

    move-object/from16 v12, v24

    :goto_3d
    move-object/from16 v14, v28

    :cond_4e
    :goto_3e
    const/4 v8, 0x1

    :goto_3f
    if-eqz v8, :cond_4f

    const/4 v8, 0x1

    goto :goto_40

    :cond_4f
    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v24, v12

    move-object/from16 v28, v14

    move-object/from16 v17, v15

    move-object/from16 v8, v16

    move/from16 v3, p2

    goto/16 :goto_3b

    :cond_50
    move/from16 p2, v3

    move-object/from16 v15, v17

    move-object/from16 v3, v19

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v14, v28

    move/from16 v8, p2

    :goto_40
    if-nez v8, :cond_51

    move-object v3, v1

    move-object/from16 v17, v5

    move-object/from16 v4, v35

    goto/16 :goto_44

    .line 50
    :cond_51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 p2, v1

    instance-of v1, v9, Ljava/util/Map;

    if-nez v1, :cond_52

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    goto :goto_41

    :cond_52
    check-cast v9, Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v10

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v5, v10, v12, v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_53

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "mail_"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_53
    invoke-interface {v1, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "email_type"

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "gift"

    filled-new-array {v10, v12, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/y2;->o3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "email_title"

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "title"

    invoke-interface {v9, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "\u7cfb\u7edf\u90ae\u4ef6"

    filled-new-array {v10, v12, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "email_content"

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "content"

    invoke-interface {v9, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v12, v6}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "email_sender"

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "from_user"

    invoke-interface {v9, v12, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "\u7cfb\u7edf"

    filled-new-array {v10, v12, v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "email_sender_nickname"

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v4

    const-string v4, "sender"

    invoke-interface {v9, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v12, v4, v5, v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sgscq/vpn/y2;->f1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v35

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Ljava/util/List;

    if-nez v10, :cond_54

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_54
    instance-of v10, v5, Ljava/util/List;

    if-nez v10, :cond_55

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_55
    instance-of v9, v5, Ljava/util/List;

    if-eqz v9, :cond_56

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_56
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    const-string v29, "mail_id"

    const-string v30, "email_id"

    const-string v31, "id"

    const-string v32, "mail_type"

    const-string v33, "title"

    const-string v34, "content"

    const-string v35, "sender"

    const-string v36, "from_user"

    const-string v37, "reward"

    const-string v38, "rewards"

    const-string v39, "attach_list"

    const-string v40, "attachment"

    const-string v41, "attachments"

    filled-new-array/range {v29 .. v41}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    :goto_43
    const/16 v10, 0xd

    if-ge v9, v10, :cond_57

    aget-object v10, v5, v9

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_57
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move-object/from16 v35, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v14, v28

    goto/16 :goto_41

    :cond_58
    move-object/from16 v17, v5

    move-object/from16 v4, v35

    move-object/from16 v1, v60

    invoke-interface {v13, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v8

    .line 51
    :goto_44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "upd"

    const-string v9, "add"

    filled-new-array {v8, v5, v9, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "del"

    invoke-static {v6, v1, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/sgscq/vpn/w2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v8, v7, v9, v12}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v8, v5, v9, v7}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v7, v26

    invoke-static {v6, v7, v5}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "Mail"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v17

    move-object/from16 v5, v21

    move-object/from16 v8, v25

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "remaining_mails_internal"

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "delta_data"

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, v2, Lcom/sgscq/vpn/w2;->c:Z

    if-eqz v1, :cond_5a

    const-string v1, "Player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmn_modules"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_47
    return-object v5

    .line 52
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected mail event kind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_9
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
