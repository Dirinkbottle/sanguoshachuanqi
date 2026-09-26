.class public final Lm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sgscq/vpn/w4;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    iput p1, p0, Lm/e;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/e;->b:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "limited_shop_config"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "limited_shop_config.bin"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lm/e;->c:Ljava/lang/Object;

    const-string p1, "sgscq_limited_shop_config_v1"

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/sgscq/vpn/cloud/z;

    invoke-direct {p1, p2}, Lcom/sgscq/vpn/cloud/z;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    new-instance p1, Lm/e;

    invoke-direct {p1, v1, p2}, Lm/e;-><init>(ILandroid/content/Context;)V

    iput-object p1, p0, Lm/e;->c:Ljava/lang/Object;

    new-instance p1, Lcom/sgscq/vpn/cloud/b0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/sgscq/vpn/cloud/b0;-><init>(ILandroid/content/Context;)V

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, La/o;

    invoke-direct {p1}, La/o;-><init>()V

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    const-string p2, "sgscq_cloud_session_v1"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lm/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/d2;Lcom/sgscq/vpn/config/i;[B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm/e;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm/e;->c:Ljava/lang/Object;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sgscq/vpn/h5;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lm/e;->a:I

    .line 5
    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lm/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lm/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lm/e;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/e;->c:Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Lcom/sgscq/vpn/config/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sgscq/vpn/config/c;

    .line 9
    iget-object v1, v0, Lcom/sgscq/vpn/config/c;->a:Ljava/lang/String;

    .line 10
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lm/e;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lm/e;->b:Ljava/lang/Object;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lm/e;->c:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lm/e;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm/e;->v(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    invoke-static {p2}, Lm/e;->v(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lm/e;->c:Ljava/lang/Object;

    invoke-static {p3}, Lm/e;->v(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lm/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/f;Ll/d;Lm/c;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    iput v9, v6, Lm/e;->a:I

    .line 13
    iput-object v7, v6, Lm/e;->d:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lm/e;->b:Ljava/lang/Object;

    move-object/from16 v10, p3

    move v0, v9

    move v1, v0

    :goto_0
    sget-object v11, Ll/b;->f:Ll/b;

    iget-object v12, v6, Lm/e;->b:Ljava/lang/Object;

    const/4 v13, 0x1

    if-eqz v10, :cond_7

    iget v2, v10, Lm/c;->d:I

    add-int v5, v0, v2

    .line 14
    iget-object v2, v10, Lm/c;->a:Ll/b;

    .line 15
    sget-object v0, Ll/b;->e:Ll/b;

    iget v4, v10, Lm/c;->c:I

    iget-object v14, v10, Lm/c;->e:Lm/c;

    if-ne v2, v0, :cond_0

    if-nez v14, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-eqz v14, :cond_2

    iget v0, v14, Lm/c;->c:I

    if-eq v4, v0, :cond_2

    :cond_1
    move v15, v13

    goto :goto_1

    :cond_2
    move v15, v9

    :goto_1
    if-eqz v15, :cond_3

    goto :goto_2

    :cond_3
    move v13, v1

    :goto_2
    if-eqz v14, :cond_5

    iget-object v0, v14, Lm/c;->a:Ll/b;

    if-ne v0, v2, :cond_5

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    move/from16 p3, v13

    move-object/from16 v17, v14

    move v13, v5

    goto :goto_4

    :cond_5
    :goto_3
    move-object v3, v12

    check-cast v3, Ljava/util/List;

    new-instance v1, Lm/d;

    .line 16
    iget v0, v10, Lm/c;->b:I

    move/from16 v16, v0

    move-object v0, v1

    move/from16 p3, v13

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v14

    move-object v14, v3

    move/from16 v3, v16

    .line 17
    invoke-direct/range {v0 .. v5}, Lm/d;-><init>(Lm/e;Ll/b;III)V

    invoke-interface {v14, v9, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v13, v9

    :goto_4
    if-eqz v15, :cond_6

    check-cast v12, Ljava/util/List;

    new-instance v14, Lm/d;

    .line 18
    iget v3, v10, Lm/c;->b:I

    .line 19
    iget v4, v10, Lm/c;->c:I

    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    .line 20
    invoke-direct/range {v0 .. v5}, Lm/d;-><init>(Lm/e;Ll/b;III)V

    invoke-interface {v12, v9, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    move/from16 v1, p3

    move v0, v13

    move-object/from16 v10, v17

    goto :goto_0

    .line 21
    :cond_7
    iget-boolean v0, v7, Lm/f;->a:Z

    if-eqz v0, :cond_a

    .line 22
    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/d;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lm/d;->a:Ll/b;

    if-eq v0, v11, :cond_8

    if-eqz v1, :cond_8

    new-instance v10, Lm/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lm/d;-><init>(Lm/e;Ll/b;III)V

    invoke-interface {v12, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/d;

    .line 23
    iget-object v0, v0, Lm/d;->a:Ll/b;

    if-eq v0, v11, :cond_9

    goto :goto_5

    :cond_9
    move v9, v13

    .line 24
    :goto_5
    new-instance v10, Lm/d;

    sget-object v2, Ll/b;->h:Ll/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lm/d;-><init>(Lm/e;Ll/b;III)V

    invoke-interface {v12, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    :cond_a
    iget v0, v8, Ll/d;->a:I

    const/16 v1, 0x1a

    const/16 v2, 0x9

    if-gt v0, v2, :cond_b

    move v3, v13

    goto :goto_6

    :cond_b
    if-gt v0, v1, :cond_c

    const/4 v3, 0x2

    goto :goto_6

    :cond_c
    const/4 v3, 0x3

    .line 26
    :goto_6
    invoke-static {v3}, La/b0;->c(I)I

    move-result v3

    if-eqz v3, :cond_e

    if-eq v3, v13, :cond_d

    const/16 v13, 0x1b

    const/16 v1, 0x28

    goto :goto_7

    :cond_d
    const/16 v13, 0xa

    goto :goto_7

    :cond_e
    move v1, v2

    :goto_7
    invoke-virtual {v6, v8}, Lm/e;->n(Ll/d;)I

    move-result v2

    :goto_8
    iget-object v3, v7, Lm/f;->d:Ljava/io/Serializable;

    if-ge v0, v1, :cond_f

    invoke-static {v0}, Ll/d;->b(I)Ll/d;

    move-result-object v4

    .line 27
    move-object v5, v3

    check-cast v5, Ll/a;

    .line 28
    invoke-static {v2, v4, v5}, Lm/b;->c(ILl/d;Ll/a;)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-le v0, v13, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ll/d;->b(I)Ll/d;

    move-result-object v4

    .line 29
    move-object v5, v3

    check-cast v5, Ll/a;

    .line 30
    invoke-static {v2, v4, v5}, Lm/b;->c(ILl/d;Ll/a;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    goto :goto_9

    :cond_10
    invoke-static {v0}, Ll/d;->b(I)Ll/d;

    move-result-object v0

    iput-object v0, v6, Lm/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp/a;Lp/a;)V
    .locals 2

    const/16 v0, 0x9

    iput v0, p0, Lm/e;->a:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lm/e;-><init>(Lp/a;Lp/a;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lp/a;Lp/a;Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lm/e;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lm/e;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public static I(Lcom/sgscq/vpn/cloud/j;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lm/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cloud_friend_message_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/sgscq/vpn/cloud/j;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pk_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_id"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mail_id"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_type"

    const-string v3, "friend"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mail_type"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "origin_mail_type"

    const-string v3, "normalUser"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_title"

    const-string v3, "\u597d\u53cb\u7559\u8a00"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_content"

    iget-object v3, p0, Lcom/sgscq/vpn/cloud/j;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_sender"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email_sender_nickname"

    iget-object v3, p0, Lcom/sgscq/vpn/cloud/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sender"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "from_user"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sgscq/vpn/cloud/j;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "email_time_offset"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_attach_get"

    const-string v0, "1"

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "is_accepted"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "status"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "send_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x278d00

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "expire_time"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static J(Lcom/sgscq/vpn/cloud/m;)Ljava/util/LinkedHashMap;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "union_id"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v5, v0

    .line 13
    move-object v9, v0

    .line 14
    move-object v11, v0

    .line 15
    move-object/from16 v23, v0

    .line 16
    .line 17
    move-object v13, v0

    .line 18
    move-object v15, v0

    .line 19
    const-string v2, "union_name"

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const-string v4, "union_level"

    .line 24
    .line 25
    const-string v6, "leader_nickname"

    .line 26
    .line 27
    const-string v7, ""

    .line 28
    .line 29
    const-string v8, "level_union_exp"

    .line 30
    .line 31
    const-string v10, "level_up_exp"

    .line 32
    .line 33
    const-string v12, "rank"

    .line 34
    .line 35
    const-string v14, "user_num"

    .line 36
    .line 37
    const-string v16, "user_limit"

    .line 38
    .line 39
    const/16 v17, 0x32

    .line 40
    .line 41
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    const-string v18, "notice"

    .line 46
    .line 47
    const-string v19, ""

    .line 48
    .line 49
    const-string v20, "union_sign"

    .line 50
    .line 51
    const-string v21, ""

    .line 52
    .line 53
    const-string v22, "union_fightPoint"

    .line 54
    .line 55
    const-string v24, "apply_state"

    .line 56
    .line 57
    const/16 v25, 0x1

    .line 58
    .line 59
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v25

    .line 63
    filled-new-array/range {v2 .. v25}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v0, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_0
    iget v2, v0, Lcom/sgscq/vpn/cloud/m;->a:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "union_name"

    .line 79
    .line 80
    iget-object v4, v0, Lcom/sgscq/vpn/cloud/m;->b:Ljava/lang/String;

    .line 81
    .line 82
    const-string v5, "union_level"

    .line 83
    .line 84
    iget v6, v0, Lcom/sgscq/vpn/cloud/m;->c:I

    .line 85
    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "leader_nickname"

    .line 91
    .line 92
    iget-object v8, v0, Lcom/sgscq/vpn/cloud/m;->d:Ljava/lang/String;

    .line 93
    .line 94
    const-string v9, "level_union_exp"

    .line 95
    .line 96
    iget v10, v0, Lcom/sgscq/vpn/cloud/m;->e:I

    .line 97
    .line 98
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    const-string v11, "level_up_exp"

    .line 103
    .line 104
    iget v12, v0, Lcom/sgscq/vpn/cloud/m;->f:I

    .line 105
    .line 106
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    const-string v13, "rank"

    .line 111
    .line 112
    iget v14, v0, Lcom/sgscq/vpn/cloud/m;->g:I

    .line 113
    .line 114
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    const-string v15, "user_num"

    .line 119
    .line 120
    move-object/from16 v27, v1

    .line 121
    .line 122
    iget v1, v0, Lcom/sgscq/vpn/cloud/m;->h:I

    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    const-string v17, "user_limit"

    .line 129
    .line 130
    iget v1, v0, Lcom/sgscq/vpn/cloud/m;->i:I

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v18

    .line 136
    const-string v19, "notice"

    .line 137
    .line 138
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/m;->j:Ljava/lang/String;

    .line 139
    .line 140
    move-object/from16 v20, v1

    .line 141
    .line 142
    const-string v21, "union_sign"

    .line 143
    .line 144
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/m;->k:Ljava/lang/String;

    .line 145
    .line 146
    move-object/from16 v22, v1

    .line 147
    .line 148
    const-string v23, "union_fightPoint"

    .line 149
    .line 150
    iget v1, v0, Lcom/sgscq/vpn/cloud/m;->l:I

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v24

    .line 156
    const-string v25, "apply_state"

    .line 157
    .line 158
    iget v0, v0, Lcom/sgscq/vpn/cloud/m;->m:I

    .line 159
    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v26

    .line 164
    filled-new-array/range {v3 .. v26}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    move-object/from16 v1, v27

    .line 169
    .line 170
    invoke-static {v1, v2, v0}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method

.method public static K(Lcom/sgscq/vpn/cloud/q;)Ljava/util/ArrayList;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sgscq/vpn/cloud/q;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/cloud/p;

    iget-object v2, v1, Lcom/sgscq/vpn/cloud/p;->a:Ljava/lang/String;

    invoke-static {v2}, Lm/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_nickname"

    iget-object v4, v1, Lcom/sgscq/vpn/cloud/p;->b:Ljava/lang/String;

    const-string v5, "general_id"

    iget-object v6, v1, Lcom/sgscq/vpn/cloud/p;->c:Ljava/lang/String;

    const-string v7, "fight_point"

    iget-wide v8, v1, Lcom/sgscq/vpn/cloud/p;->d:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "battle_id"

    iget v10, v1, Lcom/sgscq/vpn/cloud/p;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "pos"

    iget v1, v1, Lcom/sgscq/vpn/cloud/p;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "user_id"

    invoke-static {v3, v2, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static L(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/cloud/m;

    invoke-static {v1}, Lm/e;->J(Lcom/sgscq/vpn/cloud/m;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static M(Lcom/sgscq/vpn/cloud/y;)Ljava/util/LinkedHashMap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/cloud/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lm/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "user_id"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sgscq/vpn/cloud/y;->b:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v6, "user_name"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v6, "user_nickname"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "level"

    aput-object v5, v1, v4

    iget v4, p0, Lcom/sgscq/vpn/cloud/y;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v1, v6

    const/16 v5, 0xa

    const-string v6, "user_level"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    const/16 v4, 0xc

    const-string v5, "user_vip_level"

    aput-object v5, v1, v4

    iget v4, p0, Lcom/sgscq/vpn/cloud/y;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v1, v5

    const/16 v4, 0xe

    const-string v5, "fighting"

    aput-object v5, v1, v4

    iget-wide v4, p0, Lcom/sgscq/vpn/cloud/y;->e:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/16 v7, 0xf

    aput-object v6, v1, v7

    const/16 v6, 0x10

    const-string v7, "fightPoint"

    aput-object v7, v1, v6

    const/16 v6, 0x11

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v6

    const/16 v4, 0x12

    const-string v5, "ladder_rank"

    aput-object v5, v1, v4

    iget v4, p0, Lcom/sgscq/vpn/cloud/y;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13

    aput-object v4, v1, v5

    const/16 v4, 0x14

    const-string v5, "general_id"

    aput-object v5, v1, v4

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/sgscq/vpn/cloud/y;->g:Ljava/lang/String;

    aput-object v5, v1, v4

    const/16 v4, 0x16

    const-string v6, "general_skin"

    aput-object v6, v1, v4

    const/16 v4, 0x17

    aput-object v5, v1, v4

    const/16 v4, 0x18

    const-string v5, "isInvited"

    aput-object v5, v1, v4

    iget-boolean p0, p0, Lcom/sgscq/vpn/cloud/y;->h:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v3, 0x19

    aput-object p0, v1, v3

    const/16 p0, 0x1a

    const-string v3, "type"

    aput-object v3, v1, p0

    const/16 p0, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "id"

    invoke-static {p0, v0, v1}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sgscq/vpn/cloud/y;

    invoke-static {v1}, Lm/e;->M(Lcom/sgscq/vpn/cloud/y;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static P(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e()Lm/e;
    .locals 4

    .line 1
    new-instance v0, Lm/e;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lm/e;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "cloud_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static v(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static z(La/t;Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_5

    .line 11
    .line 12
    instance-of p1, p0, La/p;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, La/q;->e()La/p;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, La/p;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_5

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, La/q;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of v1, p1, La/t;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, La/q;->f()La/t;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "hidden"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, La/t;->o(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, La/q;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const-string v1, "id"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, La/t;->o(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p1, v1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, La/q;->i()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/recommendations?limit=20"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "users"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/sgscq/vpn/cloud/z;->N(Ljava/lang/String;Ljava/lang/String;)La/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, La/a;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1}, Lm/e;->N(Ljava/util/List;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "DELETE"

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "/social/guild/members/"

    .line 17
    .line 18
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const-string v4, "application/json"

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "/social/friend-requests/"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, "/reply"

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "accept"

    .line 44
    .line 45
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p3, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 49
    .line 50
    invoke-virtual {p3, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/sgscq/vpn/cloud/z;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "/social/guild/applications/"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, "/reply"

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "accept"

    .line 44
    .line 45
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p3, Lcom/sgscq/vpn/cloud/z;->c:La/o;

    .line 49
    .line 50
    invoke-virtual {p3, v0}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p1, p2, p3}, Lcom/sgscq/vpn/cloud/z;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->w(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sgscq/vpn/cloud/a0;

    const/4 v0, 0x0

    const-string v1, "\u53ea\u6709\u5f53\u524d\u4e91\u7aef\u89d2\u8272\u53ef\u4ee5\u4f7f\u7528\u597d\u53cb\u548c\u516c\u4f1a\u529f\u80fd"

    const/16 v2, 0x193

    const-string v3, "cloud_character_required"

    invoke-direct {p1, v2, v0, v3, v1}, Lcom/sgscq/vpn/cloud/a0;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized F(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lm/e;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, La/o;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, La/o;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/sgscq/vpn/y5;->c:[B

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lcom/sgscq/vpn/y5;->i(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "session_encrypted"

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "\u4e91\u4f1a\u8bdd\u4fdd\u5b58\u5931\u8d25"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    const-string p2, "UTF-8"

    .line 22
    .line 23
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "GET"

    .line 28
    .line 29
    const-string p2, "/social/search?q="

    .line 30
    .line 31
    const-string v2, "&limit=50"

    .line 32
    .line 33
    invoke-static {p2, p1, v2}, Lcom/sgscq/vpn/handler/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const-string v4, "application/json"

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "users"

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/sgscq/vpn/cloud/z;->N(Ljava/lang/String;Ljava/lang/String;)La/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p1, p1, La/a;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p1}, Lm/e;->N(Ljava/util/List;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "/social/friends/"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, "/messages"

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "content"

    .line 35
    .line 36
    invoke-static {v0, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string v0, "POST"

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2, p3}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "message"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->A(La/t;)Lcom/sgscq/vpn/cloud/j;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lm/e;->I(Lcom/sgscq/vpn/cloud/j;)Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const-string v1, "notice"

    .line 19
    .line 20
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const-string p2, "sign"

    .line 26
    .line 27
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string p2, "PATCH"

    .line 31
    .line 32
    const-string p3, "/social/guild"

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3, v0}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "guild"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/sgscq/vpn/cloud/z;->g(La/t;Ljava/lang/String;)La/t;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->D(La/t;)Lcom/sgscq/vpn/cloud/m;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final Q([B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot create config cache directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot replace config cache"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot install config cache"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_encrypted"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    move-object p2, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    const-string v2, "name"

    .line 27
    .line 28
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    move-object p2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :goto_1
    const-string p3, "sign"

    .line 40
    .line 41
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    if-nez p4, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_2
    const-string p2, "notice"

    .line 52
    .line 53
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string p2, "POST"

    .line 57
    .line 58
    const-string p3, "/social/guilds"

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3, v0}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "DELETE"

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "/social/friends/"

    .line 17
    .line 18
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const-string v4, "application/json"

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(IILjava/lang/String;)Lcom/sgscq/vpn/cloud/k;
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p3, Lcom/sgscq/vpn/cloud/z;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "goods_id"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v1, "count"

    .line 35
    .line 36
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string p2, "POST"

    .line 40
    .line 41
    const-string v1, "/social/guild/exchanges"

    .line 42
    .line 43
    invoke-virtual {p3, p2, v1, v0}, Lcom/sgscq/vpn/cloud/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v0, p2, Lcom/sgscq/vpn/cloud/g;->d:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lcom/sgscq/vpn/cloud/o;

    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget v0, v0, Lcom/sgscq/vpn/cloud/o;->b:I

    .line 68
    .line 69
    :goto_0
    invoke-static {p3, v0}, Lcom/sgscq/vpn/cloud/z;->C(La/t;I)Lcom/sgscq/vpn/battle/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "reward_item_id"

    .line 74
    .line 75
    const-string v2, ""

    .line 76
    .line 77
    invoke-static {p3, v1, v2}, Lcom/sgscq/vpn/cloud/z;->a0(La/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    new-instance v2, Lcom/sgscq/vpn/cloud/k;

    .line 92
    .line 93
    const-string v3, "reward_item_num"

    .line 94
    .line 95
    invoke-static {p3, v3, p1}, Lcom/sgscq/vpn/cloud/z;->t(La/t;Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-direct {v2, p2, v0, v1, p1}, Lcom/sgscq/vpn/cloud/k;-><init>(Lcom/sgscq/vpn/cloud/g;Lcom/sgscq/vpn/battle/a;Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string p2, "\u4e91\u516c\u4f1a\u5151\u6362\u54cd\u5e94\u7f3a\u5c11\u5956\u52b1"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/v5;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "/social/friends/"

    .line 17
    .line 18
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "/profile"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const-string v4, "application/json"

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->B(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/r;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/sgscq/vpn/v5;->h(Lcom/sgscq/vpn/cloud/r;)Lcom/sgscq/vpn/v5;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Lcom/sgscq/vpn/y5;->l(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/sgscq/vpn/cloud/z;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v2, "GET"

    .line 18
    .line 19
    const-string v3, "/social/friend-messages?limit=50"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const-string v5, "application/json"

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "messages"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, La/t;->o(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    instance-of v2, v2, La/p;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v1}, La/t;->n(Ljava/lang/String;)La/p;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-eqz v0, :cond_4

    .line 66
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, La/p;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, La/q;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    instance-of v3, v2, La/t;

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2}, La/q;->f()La/t;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->A(La/t;)Lcom/sgscq/vpn/cloud/j;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/sgscq/vpn/cloud/j;

    .line 122
    .line 123
    invoke-static {v1}, Lm/e;->I(Lcom/sgscq/vpn/cloud/j;)Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    return-object p1

    .line 132
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v0, "\u4e91\u597d\u53cb\u7559\u8a00\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final j(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1, p2}, Lcom/sgscq/vpn/y5;->p(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/sgscq/vpn/c7;->g()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Lm/e;->b:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    check-cast v3, Lcom/sgscq/vpn/cloud/z;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v4, "GET"

    .line 22
    .line 23
    const-string v5, "/social/friend-requests"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v7, "application/json"

    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual/range {v3 .. v8}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "requests"

    .line 41
    .line 42
    invoke-static {v2, v3}, Lcom/sgscq/vpn/cloud/z;->N(Ljava/lang/String;Ljava/lang/String;)La/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v2, v2, La/a;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/sgscq/vpn/cloud/y;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/sgscq/vpn/cloud/y;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v4}, Lm/e;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v7, "cloud_friend_"

    .line 80
    .line 81
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v7, v3, Lcom/sgscq/vpn/cloud/y;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v7, "pk_id"

    .line 94
    .line 95
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v6, "email_type"

    .line 99
    .line 100
    const-string v7, "friendApply"

    .line 101
    .line 102
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v6, "email_title"

    .line 106
    .line 107
    const-string v7, "\u597d\u53cb\u7533\u8bf7"

    .line 108
    .line 109
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v3, v3, Lcom/sgscq/vpn/cloud/y;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v7, " \u8bf7\u6c42\u6dfb\u52a0\u4f60\u4e3a\u597d\u53cb"

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v7, "email_content"

    .line 132
    .line 133
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v6, "email_sender"

    .line 137
    .line 138
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v4, "email_sender_nickname"

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const-string v7, "email_time_offset"

    .line 145
    .line 146
    invoke-static {v5, v4, v3, v6, v7}, Lcom/sgscq/vpn/handler/l;->b(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v3, "is_friend_request"

    .line 150
    .line 151
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    const-string v3, "is_attach_get"

    .line 157
    .line 158
    const-string v4, "1"

    .line 159
    .line 160
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string v3, "send_time"

    .line 164
    .line 165
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v3, "create_time"

    .line 173
    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const-wide/32 v3, 0x278d00

    .line 182
    .line 183
    .line 184
    add-long/2addr v3, v0

    .line 185
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v4, "expire_time"

    .line 190
    .line 191
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_0
    return-object p1
.end method

.method public final l(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/friends"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "friends"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/sgscq/vpn/cloud/z;->N(Ljava/lang/String;Ljava/lang/String;)La/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, La/a;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1}, Lm/e;->N(Ljava/util/List;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public final n(Ll/d;)I
    .locals 11

    .line 1
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_8

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lm/d;

    .line 22
    .line 23
    iget-object v4, v3, Lm/d;->a:Ll/b;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Ll/b;->a(Ll/d;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x4

    .line 30
    add-int/2addr v5, v6

    .line 31
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v7, 0x2

    .line 36
    iget v8, v3, Lm/d;->d:I

    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    if-eq v4, v9, :cond_5

    .line 40
    .line 41
    const/4 v10, 0x6

    .line 42
    if-eq v4, v7, :cond_3

    .line 43
    .line 44
    if-eq v4, v6, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    if-eq v4, v3, :cond_1

    .line 48
    .line 49
    if-eq v4, v10, :cond_0

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_0
    mul-int/lit8 v8, v8, 0xd

    .line 53
    .line 54
    add-int/2addr v5, v8

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    add-int/lit8 v5, v5, 0x8

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    invoke-virtual {v3}, Lm/d;->a()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    mul-int/lit8 v3, v3, 0x8

    .line 64
    .line 65
    add-int/2addr v5, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    div-int/lit8 v3, v8, 0x2

    .line 68
    .line 69
    mul-int/lit8 v3, v3, 0xb

    .line 70
    .line 71
    add-int/2addr v3, v5

    .line 72
    rem-int/lit8 v8, v8, 0x2

    .line 73
    .line 74
    if-ne v8, v9, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v10, v1

    .line 78
    :goto_1
    add-int v5, v3, v10

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    div-int/lit8 v3, v8, 0x3

    .line 82
    .line 83
    mul-int/lit8 v3, v3, 0xa

    .line 84
    .line 85
    add-int/2addr v3, v5

    .line 86
    rem-int/lit8 v8, v8, 0x3

    .line 87
    .line 88
    if-ne v8, v9, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    if-ne v8, v7, :cond_7

    .line 92
    .line 93
    const/4 v6, 0x7

    .line 94
    goto :goto_2

    .line 95
    :cond_7
    move v6, v1

    .line 96
    :goto_2
    add-int v5, v3, v6

    .line 97
    .line 98
    :goto_3
    add-int/2addr v2, v5

    .line 99
    goto :goto_0

    .line 100
    :cond_8
    return v2
.end method

.method public final o(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/guild/applications"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "applications"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/sgscq/vpn/cloud/z;->N(Ljava/lang/String;Ljava/lang/String;)La/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, La/a;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1}, Lm/e;->N(Ljava/util/List;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public final p(Ljava/lang/String;)Lcom/sgscq/vpn/battle/a;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/guild/goods"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-static {p1, v0}, Lcom/sgscq/vpn/cloud/z;->C(La/t;I)Lcom/sgscq/vpn/battle/a;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Lcom/sgscq/vpn/v5;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "/social/guild/members/"

    .line 17
    .line 18
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/sgscq/vpn/cloud/z;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "/profile"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const-string v4, "application/json"

    .line 39
    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->B(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/r;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/sgscq/vpn/v5;->h(Lcom/sgscq/vpn/cloud/r;)Lcom/sgscq/vpn/v5;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final r(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lm/e;->b:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/sgscq/vpn/cloud/z;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v2, "GET"

    .line 18
    .line 19
    const-string v3, "/social/guild/members"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const-string v5, "application/json"

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "members"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, La/t;->o(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v1}, La/t;->m(Ljava/lang/String;)La/q;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    instance-of v2, v2, La/p;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v1}, La/t;->n(Ljava/lang/String;)La/p;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    if-eqz v0, :cond_5

    .line 66
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, La/p;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, La/q;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    instance-of v3, v2, La/t;

    .line 92
    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v2}, La/q;->f()La/t;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Lcom/sgscq/vpn/cloud/n;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->M(La/t;)Lcom/sgscq/vpn/cloud/y;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v2}, Lcom/sgscq/vpn/cloud/z;->G(La/t;)Lcom/sgscq/vpn/cloud/o;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v3, v4, v2}, Lcom/sgscq/vpn/cloud/n;-><init>(Lcom/sgscq/vpn/cloud/y;Lcom/sgscq/vpn/cloud/o;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/sgscq/vpn/cloud/n;

    .line 132
    .line 133
    iget-object v2, v1, Lcom/sgscq/vpn/cloud/n;->a:Lcom/sgscq/vpn/cloud/y;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v2}, Lm/e;->M(Lcom/sgscq/vpn/cloud/y;)Ljava/util/LinkedHashMap;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v1, v1, Lcom/sgscq/vpn/cloud/n;->b:Lcom/sgscq/vpn/cloud/o;

    .line 145
    .line 146
    iget v5, v1, Lcom/sgscq/vpn/cloud/o;->a:I

    .line 147
    .line 148
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v6, "user_role"

    .line 153
    .line 154
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget v5, v1, Lcom/sgscq/vpn/cloud/o;->b:I

    .line 158
    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const-string v6, "user_donate"

    .line 164
    .line 165
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    iget v5, v1, Lcom/sgscq/vpn/cloud/o;->c:I

    .line 169
    .line 170
    if-lez v5, :cond_3

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v6, "donationState"

    .line 178
    .line 179
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    const-string v5, "today_donate_num"

    .line 187
    .line 188
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget v3, v1, Lcom/sgscq/vpn/cloud/o;->d:I

    .line 192
    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const-string v5, "today_donate_type"

    .line 198
    .line 199
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    iget-wide v5, v1, Lcom/sgscq/vpn/cloud/o;->e:J

    .line 203
    .line 204
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v3, "user_last_login_time"

    .line 209
    .line 210
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const-string v1, "union_war_sign_up"

    .line 214
    .line 215
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const-string v1, "active"

    .line 221
    .line 222
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const-string v1, "uw_join_times"

    .line 226
    .line 227
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    return-object p1

    .line 235
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 236
    .line 237
    const-string v0, "\u4e91\u516c\u4f1a\u6210\u5458\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 238
    .line 239
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p1
.end method

.method public final s(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/guild"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->E(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/g;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final t(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    const-string v2, "/social/guild/war/roster"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "application/json"

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->F(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/q;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lm/e;->K(Lcom/sgscq/vpn/cloud/q;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lm/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lm/d;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v2, ","

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v3}, Lm/d;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-object v2, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lm/e;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lm/e;->b:Ljava/lang/Object;

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/sgscq/vpn/cloud/z;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "GET"

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const-string p1, "/social/guilds?limit=50"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "/social/guilds?limit=50&q="

    .line 35
    .line 36
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "UTF-8"

    .line 40
    .line 41
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    move-object v2, p1

    .line 53
    const/4 v3, 0x0

    .line 54
    const-string v4, "application/json"

    .line 55
    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/sgscq/vpn/cloud/z;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Lcom/sgscq/vpn/cloud/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/sgscq/vpn/cloud/t;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/sgscq/vpn/cloud/z;->x(Ljava/lang/String;)La/t;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "guilds"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, La/t;->o(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1, p2}, La/t;->m(Ljava/lang/String;)La/q;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    instance-of v0, v0, La/p;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1, p2}, La/t;->n(Ljava/lang/String;)La/p;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const/4 p1, 0x0

    .line 97
    :goto_2
    if-eqz p1, :cond_5

    .line 98
    .line 99
    new-instance p2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, La/p;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, La/q;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    instance-of v1, v0, La/t;

    .line 124
    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    invoke-virtual {v0}, La/q;->f()La/t;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/sgscq/vpn/cloud/z;->D(La/t;)Lcom/sgscq/vpn/cloud/m;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    return-object p2

    .line 140
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const-string p2, "\u4e91\u516c\u4f1a\u5217\u8868\u54cd\u5e94\u4e0d\u5b8c\u6574"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    check-cast v0, Lm/e;

    invoke-virtual {v0}, Lm/e;->y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm/e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sgscq/vpn/cloud/b0;

    iget-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sgscq/vpn/cloud/b0;->f(Ljava/lang/String;)Lcom/sgscq/vpn/cloud/d0;

    move-result-object v1

    iget-object v0, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->afdianUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sgscq/vpn/cloud/d0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x(Ljava/util/LinkedHashMap;)Z
    .locals 2

    .line 1
    const-string v0, "skill_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm/e;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "equipment_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm/e;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "general_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lm/e;->b:Ljava/lang/Object;

    :goto_0
    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lm/e;->P(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized y()Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v1, "session_encrypted"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :cond_0
    :try_start_1
    iget-object v1, p0, Lm/e;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, La/o;

    .line 30
    .line 31
    iget-object v2, p0, Lm/e;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Lcom/sgscq/vpn/y5;->c:[B

    .line 40
    .line 41
    invoke-static {v2, v0, v3}, Lcom/sgscq/vpn/y5;->c(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-class v2, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, La/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "release"

    .line 65
    .line 66
    const-string v3, ""

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    move-object v1, v3

    .line 71
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    const-string v2, "release"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    move-object v2, v3

    .line 88
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lm/e;->a()V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit p0

    .line 103
    return-object v0

    .line 104
    :cond_5
    :try_start_3
    iget-object v1, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    iput-object v2, v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;->environment:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lm/e;->F(Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .line 116
    .line 117
    :cond_6
    monitor-exit p0

    .line 118
    return-object v0

    .line 119
    :catch_0
    :try_start_4
    iget-object v0, p0, Lm/e;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroid/content/SharedPreferences;

    .line 122
    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "session_encrypted"

    .line 128
    .line 129
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;

    .line 137
    .line 138
    invoke-direct {v0}, Lcom/sgscq/vpn/cloud/CloudSessionStore$SessionData;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    .line 140
    .line 141
    monitor-exit p0

    .line 142
    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    monitor-exit p0

    .line 145
    throw v0
.end method
