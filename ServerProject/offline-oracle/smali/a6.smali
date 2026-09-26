.class public final synthetic Lcom/sgscq/vpn/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Landroid/content/ContextWrapper;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sgscq/vpn/SettingsActivity;Ljava/io/File;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sgscq/vpn/a6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/a6;->c:Landroid/content/ContextWrapper;

    iput-object p2, p0, Lcom/sgscq/vpn/a6;->d:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/sgscq/vpn/a6;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sgscq/vpn/SgscqVpnService;JLjava/io/FileInputStream;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/sgscq/vpn/a6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sgscq/vpn/a6;->c:Landroid/content/ContextWrapper;

    iput-wide p2, p0, Lcom/sgscq/vpn/a6;->b:J

    iput-object p4, p0, Lcom/sgscq/vpn/a6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v1, p0

    iget v0, v1, Lcom/sgscq/vpn/a6;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, v1, Lcom/sgscq/vpn/a6;->c:Landroid/content/ContextWrapper;

    move-object v10, v0

    check-cast v10, Lcom/sgscq/vpn/SettingsActivity;

    iget-object v0, v1, Lcom/sgscq/vpn/a6;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-wide v7, v1, Lcom/sgscq/vpn/a6;->b:J

    sget v4, Lcom/sgscq/vpn/SettingsActivity;->Y:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v10}, Lcom/sgscq/vpn/SettingsActivity;->n()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v3

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    filled-new-array {v5, v9}, [I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    .line 2
    :goto_3
    aget v6, v0, v3

    aget v9, v0, v2

    new-instance v0, Lcom/sgscq/vpn/b6;

    move-object v4, v0

    move-object v5, v10

    invoke-direct/range {v4 .. v9}, Lcom/sgscq/vpn/b6;-><init>(Lcom/sgscq/vpn/SettingsActivity;IJI)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :goto_4
    iget-object v0, v1, Lcom/sgscq/vpn/a6;->c:Landroid/content/ContextWrapper;

    move-object v12, v0

    check-cast v12, Lcom/sgscq/vpn/SgscqVpnService;

    iget-wide v13, v1, Lcom/sgscq/vpn/a6;->b:J

    iget-object v0, v1, Lcom/sgscq/vpn/a6;->d:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/io/FileInputStream;

    sget-boolean v0, Lcom/sgscq/vpn/SgscqVpnService;->m:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x5dc

    new-array v11, v0, [B

    const-string v0, "SGSCQ_VPN"

    const-string v4, "mainLoop STARTED"

    .line 4
    invoke-static {v0, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :goto_5
    iget-boolean v0, v12, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    if-eqz v0, :cond_1d

    iget-wide v6, v12, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    cmp-long v0, v13, v6

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :try_start_5
    invoke-virtual {v15, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    const-wide/16 v6, 0x1

    add-long v16, v4, v6

    if-lez v0, :cond_4

    :try_start_6
    invoke-virtual {v12, v0, v11}, Lcom/sgscq/vpn/SgscqVpnService;->q(I[B)V

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v21, v2

    :goto_6
    move-wide/from16 v24, v13

    move-object/from16 v22, v15

    move-object v13, v11

    goto/16 :goto_17

    :cond_4
    :goto_7
    const/16 v4, 0x14

    if-ge v0, v4, :cond_5

    goto/16 :goto_9

    :cond_5
    aget-byte v4, v11, v3

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const-wide/16 v6, 0x5

    cmp-long v6, v16, v6

    const/16 v7, 0xc

    const/16 v8, 0x10

    const/4 v9, 0x4

    if-gtz v6, :cond_6

    if-ne v5, v9, :cond_6

    and-int/lit8 v4, v4, 0xf

    mul-int/2addr v4, v9

    aget-byte v6, v11, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v11, v6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v11, v6

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v11, v4

    invoke-static {v7, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    invoke-static {v8, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    :cond_6
    const/4 v4, 0x6

    if-ne v5, v4, :cond_7

    invoke-virtual {v12, v0, v11}, Lcom/sgscq/vpn/SgscqVpnService;->k(I[B)V

    goto/16 :goto_9

    :cond_7
    if-eq v5, v9, :cond_8

    goto/16 :goto_9

    :cond_8
    const/16 v4, 0x9

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, v11, v3

    and-int/lit8 v5, v5, 0xf

    mul-int/2addr v5, v9

    aget-byte v6, v11, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v11, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v6

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v11, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v6

    invoke-static {v7, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v7

    invoke-static {v8, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v18

    const/16 v6, 0x11

    if-ne v4, v6, :cond_b

    const/16 v6, 0x35

    if-ne v10, v6, :cond_b

    add-int/lit8 v5, v5, 0x8

    invoke-static {v11, v5, v0}, Lcom/sgscq/vpn/SgscqVpnService;->h([BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v5, v0}, Lcom/sgscq/vpn/SgscqVpnService;->i([BII)I

    move-result v6

    iget-object v8, v12, Lcom/sgscq/vpn/SgscqVpnService;->i:Lcom/sgscq/vpn/m2;

    invoke-virtual {v8, v4}, Lcom/sgscq/vpn/m2;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-ne v6, v2, :cond_9

    invoke-static {v11, v5, v0}, Lcom/sgscq/vpn/SgscqVpnService;->n([BII)[B

    move-result-object v0

    invoke-static {v7, v9, v0}, Lcom/sgscq/vpn/SgscqVpnService;->d(II[B)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    const-string v0, "SGSCQ_VPN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] A \u2192 "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0xa000064

    invoke-static {v4}, Lcom/sgscq/vpn/SgscqVpnService;->m(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    const/16 v8, 0x1c

    if-ne v6, v8, :cond_c

    sub-int/2addr v0, v5

    .line 5
    new-array v6, v0, [B

    invoke-static {v11, v5, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, -0x7f

    const/4 v5, 0x2

    aput-byte v0, v6, v5

    const/16 v0, -0x80

    const/4 v5, 0x3

    aput-byte v0, v6, v5

    const/4 v0, 0x6

    aput-byte v3, v6, v0

    const/4 v0, 0x7

    aput-byte v3, v6, v0

    .line 6
    invoke-static {v7, v9, v6}, Lcom/sgscq/vpn/SgscqVpnService;->d(II[B)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/sgscq/vpn/SgscqVpnService;->r([B)V

    const-string v0, "SGSCQ_VPN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] AAAA \u2192 empty"

    goto :goto_8

    :cond_a
    const-string v0, "SGSCQ_VPN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] \u2192 pass-through"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    const/4 v6, 0x6

    if-eq v4, v6, :cond_d

    :cond_c
    :goto_9
    move-wide/from16 v24, v13

    move-object/from16 v22, v15

    move-object v13, v11

    goto/16 :goto_14

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v5, 0xd

    if-ge v4, v0, :cond_e

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_a

    :cond_e
    move v4, v3

    :goto_a
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_f

    move v6, v2

    goto :goto_b

    :cond_f
    move v6, v3

    :goto_b
    and-int/lit8 v19, v4, 0x10

    if-eqz v19, :cond_10

    move/from16 v19, v2

    goto :goto_c

    :cond_10
    move/from16 v19, v3

    :goto_c
    and-int/lit8 v20, v4, 0x4

    if-eqz v20, :cond_11

    move/from16 v20, v2

    goto :goto_d

    :cond_11
    move/from16 v20, v3

    :goto_d
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_e

    :cond_12
    move v4, v3

    :goto_e
    add-int/lit8 v1, v5, 0x4

    invoke-static {v1, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v21, v2

    add-int/lit8 v2, v5, 0x8

    :try_start_7
    invoke-static {v2, v11}, Lcom/sgscq/vpn/SgscqVpnService;->p(I[B)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    add-int/lit8 v3, v5, 0xe

    :try_start_8
    aget-byte v3, v11, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v21, v5, 0xf

    move-object/from16 v22, v15

    :try_start_9
    aget-byte v15, v11, v21

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v3, v15

    add-int/lit8 v15, v5, 0xc

    aget-byte v15, v11, v15

    shr-int/lit8 v15, v15, 0x4

    and-int/lit8 v15, v15, 0xf

    mul-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v5

    sub-int/2addr v0, v15

    if-gez v0, :cond_13

    const/4 v0, 0x0

    :cond_13
    iget-object v5, v12, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sgscq/vpn/v6;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v19, :cond_14

    if-eqz v5, :cond_14

    move-object/from16 v23, v11

    .line 7
    :try_start_a
    iget-object v11, v5, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    monitor-enter v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-wide/from16 v24, v13

    :try_start_b
    iget-object v13, v5, Lcom/sgscq/vpn/v6;->l:Lcom/sgscq/vpn/z6;

    invoke-virtual {v13, v2, v3}, Lcom/sgscq/vpn/z6;->b(II)V

    iget-object v2, v5, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v11

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0

    :catch_2
    move-exception v0

    move-wide/from16 v24, v13

    goto :goto_10

    :cond_14
    move-object/from16 v23, v11

    move-wide/from16 v24, v13

    :goto_f
    if-eqz v6, :cond_16

    if-nez v19, :cond_16

    if-eqz v5, :cond_15

    .line 8
    iget-boolean v0, v5, Lcom/sgscq/vpn/v6;->m:Z

    if-nez v0, :cond_15

    invoke-virtual {v5}, Lcom/sgscq/vpn/v6;->e()V

    move-object/from16 v13, v23

    goto/16 :goto_12

    :cond_15
    new-instance v0, Lcom/sgscq/vpn/v6;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    const/4 v2, 0x6

    move-object v4, v0

    move-object v5, v12

    move-object v6, v8

    move-object v3, v8

    move v8, v9

    move/from16 v9, v18

    move-object/from16 v13, v23

    move v11, v1

    :try_start_d
    invoke-direct/range {v4 .. v11}, Lcom/sgscq/vpn/v6;-><init>(Lcom/sgscq/vpn/SgscqVpnService;Ljava/lang/String;IIIII)V

    iget-object v1, v12, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sgscq/vpn/v6;->e()V

    .line 9
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/sgscq/vpn/b;

    invoke-direct {v3, v0, v2}, Lcom/sgscq/vpn/b;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TcpProxy-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sgscq/vpn/v6;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_12

    :catch_3
    move-exception v0

    goto/16 :goto_15

    :catch_4
    move-exception v0

    :goto_10
    move-object/from16 v13, v23

    goto/16 :goto_15

    :cond_16
    move-object v3, v8

    move-object/from16 v13, v23

    if-eqz v20, :cond_17

    .line 10
    iget-object v0, v12, Lcom/sgscq/vpn/SgscqVpnService;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sgscq/vpn/v6;

    if-eqz v5, :cond_18

    const/4 v0, 0x1

    move v1, v0

    goto :goto_11

    :cond_17
    if-eqz v4, :cond_19

    if-eqz v5, :cond_18

    iget v0, v5, Lcom/sgscq/vpn/v6;->h:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v0, v1}, Lcom/sgscq/vpn/v6;->g(II)V

    iget v0, v5, Lcom/sgscq/vpn/v6;->h:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :try_start_e
    iput v0, v5, Lcom/sgscq/vpn/v6;->h:I

    .line 11
    :goto_11
    iput-boolean v1, v5, Lcom/sgscq/vpn/v6;->m:Z

    iget-object v2, v5, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :try_start_f
    iget-object v0, v5, Lcom/sgscq/vpn/v6;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    iget-object v0, v5, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    move v2, v1

    goto :goto_13

    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    :catch_5
    move-exception v0

    move v2, v1

    goto :goto_16

    :cond_18
    :goto_12
    const/4 v0, 0x1

    move v2, v0

    goto :goto_13

    :cond_19
    const/4 v2, 0x1

    if-lez v0, :cond_1a

    if-eqz v5, :cond_1a

    .line 12
    :try_start_13
    new-array v1, v0, [B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    const/4 v3, 0x0

    :try_start_14
    invoke-static {v13, v15, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-boolean v0, v5, Lcom/sgscq/vpn/v6;->m:Z

    if-nez v0, :cond_1b

    iget-object v0, v5, Lcom/sgscq/vpn/v6;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    goto :goto_16

    :cond_1a
    :goto_13
    const/4 v3, 0x0

    :cond_1b
    :goto_14
    move-wide/from16 v4, v16

    goto :goto_1a

    :catch_8
    move-exception v0

    move-wide/from16 v24, v13

    move-object v13, v11

    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    :catch_9
    move-exception v0

    move-wide/from16 v24, v13

    move-object/from16 v22, v15

    move-object v13, v11

    move/from16 v2, v21

    :goto_16
    const/4 v1, 0x0

    move v3, v1

    goto :goto_18

    :catch_a
    move-exception v0

    goto/16 :goto_6

    :goto_17
    move/from16 v2, v21

    :goto_18
    move-wide/from16 v4, v16

    goto :goto_19

    :catch_b
    move-exception v0

    move/from16 v21, v2

    move-wide/from16 v24, v13

    move-object/from16 v22, v15

    move-object v13, v11

    move/from16 v2, v21

    .line 14
    :goto_19
    iget-boolean v1, v12, Lcom/sgscq/vpn/SgscqVpnService;->e:Z

    if-eqz v1, :cond_1c

    iget-wide v6, v12, Lcom/sgscq/vpn/SgscqVpnService;->f:J

    cmp-long v1, v24, v6

    if-nez v1, :cond_1c

    const-string v1, "SGSCQ_VPN"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mainLoop: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v6, v1}, Lc/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1c
    :goto_1a
    move-object/from16 v1, p0

    move-object v11, v13

    move-object/from16 v15, v22

    move-wide/from16 v13, v24

    goto/16 :goto_5

    :cond_1d
    const-string v0, "SGSCQ_VPN"

    const-string v1, "mainLoop ended"

    .line 16
    invoke-static {v0, v1}, Lcom/sgscq/vpn/z2;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
