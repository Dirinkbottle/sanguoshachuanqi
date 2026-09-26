.class public abstract Lcom/sgscq/vpn/handler/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string v1, "3"

    .line 4
    .line 5
    const-string v2, "4"

    .line 6
    .line 7
    const-string v3, "6"

    .line 8
    .line 9
    const-string v4, "7"

    .line 10
    .line 11
    const-string v5, "8"

    .line 12
    .line 13
    const-string v6, "9"

    .line 14
    .line 15
    const-string v7, "12"

    .line 16
    .line 17
    const-string v8, "13"

    .line 18
    .line 19
    const-string v9, "14"

    .line 20
    .line 21
    const-string v10, "15"

    .line 22
    .line 23
    const-string v11, "17"

    .line 24
    .line 25
    const-string v12, "18"

    .line 26
    .line 27
    const-string v13, "20"

    .line 28
    .line 29
    const-string v14, "21"

    .line 30
    .line 31
    const-string v15, "22"

    .line 32
    .line 33
    const-string v16, "23"

    .line 34
    .line 35
    const-string v17, "24"

    .line 36
    .line 37
    const-string v18, "25"

    .line 38
    .line 39
    const-string v19, "26"

    .line 40
    .line 41
    const-string v20, "28"

    .line 42
    .line 43
    const-string v21, "29"

    .line 44
    .line 45
    const-string v22, "30"

    .line 46
    .line 47
    const-string v23, "31"

    .line 48
    .line 49
    const-string v24, "32"

    .line 50
    .line 51
    const-string v25, "33"

    .line 52
    .line 53
    const-string v26, "35"

    .line 54
    .line 55
    const-string v27, "36"

    .line 56
    .line 57
    const-string v28, "37"

    .line 58
    .line 59
    const-string v29, "38"

    .line 60
    .line 61
    const-string v30, "40"

    .line 62
    .line 63
    const-string v31, "41"

    .line 64
    .line 65
    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/sgscq/vpn/handler/y0;->a:Ljava/util/Set;

    .line 83
    .line 84
    const-string v0, "34"

    .line 85
    .line 86
    filled-new-array {v0}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lcom/sgscq/vpn/handler/y0;->b:Ljava/util/Set;

    .line 104
    .line 105
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/AbstractCollection;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    if-eqz p3, :cond_7

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v3, v2, Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    check-cast v2, Ljava/util/Map;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    :goto_0
    const-string v2, "del"

    .line 37
    .line 38
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/sgscq/vpn/handler/y0;->h(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "upd"

    .line 47
    .line 48
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Lcom/sgscq/vpn/handler/y0;->h(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const-string v7, "add"

    .line 57
    .line 58
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v8}, Lcom/sgscq/vpn/handler/y0;->h(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_6

    .line 75
    .line 76
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    check-cast v10, Ljava/util/Map;

    .line 81
    .line 82
    if-nez v10, :cond_2

    .line 83
    .line 84
    move-object/from16 p3, v9

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_2
    const-string v11, "id"

    .line 88
    .line 89
    const-string v12, ""

    .line 90
    .line 91
    const-string v13, "pk_id"

    .line 92
    .line 93
    invoke-static {v10, v11, v12, v13}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    const/4 v15, 0x0

    .line 98
    move-object/from16 p3, v9

    .line 99
    .line 100
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-ge v15, v9, :cond_5

    .line 105
    .line 106
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    instance-of v0, v9, Ljava/util/Map;

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    check-cast v9, Ljava/util/Map;

    .line 116
    .line 117
    invoke-static {v9, v11, v12, v13}, Lc/a;->j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_4

    .line 126
    .line 127
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    invoke-virtual {v6, v15, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 138
    .line 139
    move-object/from16 v0, p0

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :goto_4
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-object/from16 v9, p3

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-object/from16 v0, p0

    .line 160
    .line 161
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-interface/range {p1 .. p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_7

    .line 169
    .line 170
    invoke-interface/range {p1 .. p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_5
    return-void
.end method

.method public static b(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "surrender_list"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "evolution_surrender_list"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    instance-of v1, p0, Ljava/util/List;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-object v0
.end method

.method public static c(Ljava/util/List;Ljava/util/Map;)Lcom/sgscq/vpn/handler/j;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcom/sgscq/vpn/handler/j;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/sgscq/vpn/handler/j;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_2a

    .line 9
    .line 10
    if-eqz p0, :cond_2a

    .line 11
    .line 12
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1e

    .line 19
    .line 20
    :cond_0
    const-string v2, "surrender_progress"

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    instance-of v4, v3, Ljava/util/Map;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    check-cast v3, Ljava/util/Map;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v7, 0x0

    .line 48
    :goto_1
    if-ge v7, v5, :cond_29

    .line 49
    .line 50
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/4 v9, 0x0

    .line 55
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-eqz v10, :cond_27

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, Ljava/util/Map;

    .line 66
    .line 67
    sget-object v12, Lcom/sgscq/vpn/handler/y0;->a:Ljava/util/Set;

    .line 68
    .line 69
    const-string v13, "surrender_type"

    .line 70
    .line 71
    const-string v14, "surrender_id"

    .line 72
    .line 73
    if-nez v10, :cond_3

    .line 74
    .line 75
    :cond_2
    :goto_3
    move/from16 v17, v5

    .line 76
    .line 77
    :goto_4
    move-object/from16 v18, v8

    .line 78
    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :cond_3
    const-string v15, "surrender_tasks"

    .line 82
    .line 83
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    instance-of v6, v15, Ljava/util/List;

    .line 88
    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    check-cast v15, Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/4 v6, 0x0

    .line 101
    invoke-static {v6}, Lcom/sgscq/vpn/w1;->a1(Landroid/content/Context;)Lcom/sgscq/vpn/w1;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6}, Lcom/sgscq/vpn/w1;->V1()Lcom/sgscq/vpn/a7;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    if-eqz v16, :cond_9

    .line 118
    .line 119
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    move/from16 v17, v5

    .line 124
    .line 125
    instance-of v5, v11, Ljava/util/Map;

    .line 126
    .line 127
    if-nez v5, :cond_5

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    check-cast v11, Ljava/util/Map;

    .line 131
    .line 132
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    move-object/from16 v18, v8

    .line 145
    .line 146
    iget-object v8, v6, Lcom/sgscq/vpn/a7;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v8, Ljava/util/Set;

    .line 149
    .line 150
    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_6

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_6

    .line 158
    :cond_6
    const/4 v5, 0x0

    .line 159
    :goto_6
    if-nez v5, :cond_8

    .line 160
    .line 161
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const-string v8, "34"

    .line 166
    .line 167
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_7

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_7
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_8

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_8
    :goto_7
    move/from16 v5, v17

    .line 186
    .line 187
    move-object/from16 v8, v18

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move/from16 v17, v5

    .line 191
    .line 192
    move-object/from16 v18, v8

    .line 193
    .line 194
    const/4 v5, 0x1

    .line 195
    goto :goto_9

    .line 196
    :goto_8
    const/4 v5, 0x0

    .line 197
    :goto_9
    if-nez v5, :cond_a

    .line 198
    .line 199
    goto/16 :goto_1b

    .line 200
    .line 201
    :cond_a
    const-string v5, "general_id"

    .line 202
    .line 203
    const-string v6, ""

    .line 204
    .line 205
    invoke-interface {v10, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-nez v11, :cond_25

    .line 218
    .line 219
    invoke-static {v8, v0}, Lcom/sgscq/vpn/handler/d0;->P(Ljava/lang/String;Ljava/util/Map;)Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-nez v11, :cond_b

    .line 224
    .line 225
    goto/16 :goto_1b

    .line 226
    .line 227
    :cond_b
    invoke-static {v0, v10, v3}, Lcom/sgscq/vpn/handler/d0;->o(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    invoke-static {v11}, Lcom/sgscq/vpn/handler/y0;->b(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    const/16 v19, 0x0

    .line 240
    .line 241
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v20

    .line 245
    move/from16 v21, v7

    .line 246
    .line 247
    const-string v7, "surrender_status"

    .line 248
    .line 249
    if-eqz v20, :cond_10

    .line 250
    .line 251
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v20

    .line 255
    move-object/from16 v22, v15

    .line 256
    .line 257
    move-object/from16 v15, v20

    .line 258
    .line 259
    check-cast v15, Ljava/util/Map;

    .line 260
    .line 261
    invoke-interface {v15, v13, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v20

    .line 265
    move-object/from16 v23, v13

    .line 266
    .line 267
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v20

    .line 275
    if-eqz v20, :cond_e

    .line 276
    .line 277
    move-object/from16 v20, v12

    .line 278
    .line 279
    sget-object v12, Lcom/sgscq/vpn/handler/y0;->b:Ljava/util/Set;

    .line 280
    .line 281
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    if-nez v12, :cond_f

    .line 286
    .line 287
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-static {v7}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-nez v7, :cond_c

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_c
    invoke-interface {v15, v14, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    const-string v12, "progress_total"

    .line 307
    .line 308
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    invoke-static {v12}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 313
    .line 314
    .line 315
    move-result-wide v12

    .line 316
    long-to-int v12, v12

    .line 317
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    if-nez v13, :cond_f

    .line 322
    .line 323
    if-lez v12, :cond_f

    .line 324
    .line 325
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v13

    .line 329
    invoke-static {v13}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 330
    .line 331
    .line 332
    move-result-wide v24

    .line 333
    move-object v15, v14

    .line 334
    int-to-long v13, v12

    .line 335
    cmp-long v13, v24, v13

    .line 336
    .line 337
    if-ltz v13, :cond_d

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-object v14, v15

    .line 348
    move-object/from16 v12, v20

    .line 349
    .line 350
    move/from16 v7, v21

    .line 351
    .line 352
    move-object/from16 v15, v22

    .line 353
    .line 354
    move-object/from16 v13, v23

    .line 355
    .line 356
    const/16 v19, 0x1

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_e
    move-object/from16 v20, v12

    .line 360
    .line 361
    :cond_f
    :goto_b
    move-object v15, v14

    .line 362
    :goto_c
    move-object v14, v15

    .line 363
    move-object/from16 v12, v20

    .line 364
    .line 365
    move/from16 v7, v21

    .line 366
    .line 367
    move-object/from16 v15, v22

    .line 368
    .line 369
    move-object/from16 v13, v23

    .line 370
    .line 371
    goto/16 :goto_a

    .line 372
    .line 373
    :cond_10
    if-eqz v19, :cond_11

    .line 374
    .line 375
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    :cond_11
    invoke-static {v11}, Lcom/sgscq/vpn/handler/y0;->b(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    iget-object v12, v1, Lcom/sgscq/vpn/handler/j;->c:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v12, Lcom/sgscq/vpn/handler/b0;

    .line 385
    .line 386
    invoke-static {v0, v6, v12, v3}, Lcom/sgscq/vpn/handler/y0;->l(Ljava/util/Map;Ljava/util/List;Lcom/sgscq/vpn/handler/b0;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    const-string v13, "all_status"

    .line 391
    .line 392
    invoke-virtual {v11, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    invoke-static {v14}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    const-string v15, "evolution_surrender_list"

    .line 401
    .line 402
    invoke-virtual {v11, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v15

    .line 406
    move/from16 v19, v9

    .line 407
    .line 408
    instance-of v9, v15, Ljava/util/List;

    .line 409
    .line 410
    if-eqz v9, :cond_12

    .line 411
    .line 412
    check-cast v15, Ljava/util/List;

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    :goto_d
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    const/16 v16, 0x1

    .line 425
    .line 426
    xor-int/lit8 v9, v9, 0x1

    .line 427
    .line 428
    if-eqz v9, :cond_16

    .line 429
    .line 430
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v20

    .line 434
    if-eqz v20, :cond_13

    .line 435
    .line 436
    move-object/from16 v22, v4

    .line 437
    .line 438
    move-object/from16 v24, v13

    .line 439
    .line 440
    const/4 v4, 0x0

    .line 441
    goto :goto_f

    .line 442
    :cond_13
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v20

    .line 446
    move-object/from16 v22, v4

    .line 447
    .line 448
    const/4 v4, 0x0

    .line 449
    :goto_e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v23

    .line 453
    if-eqz v23, :cond_15

    .line 454
    .line 455
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v23

    .line 459
    move-object/from16 v24, v13

    .line 460
    .line 461
    move-object/from16 v13, v23

    .line 462
    .line 463
    check-cast v13, Ljava/util/Map;

    .line 464
    .line 465
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    invoke-static {v13}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    if-eqz v13, :cond_14

    .line 474
    .line 475
    add-int/lit8 v4, v4, 0x1

    .line 476
    .line 477
    :cond_14
    move-object/from16 v13, v24

    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_15
    move-object/from16 v24, v13

    .line 481
    .line 482
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 483
    .line 484
    .line 485
    move-result v7

    .line 486
    invoke-static {v4, v7}, Lcom/sgscq/vpn/handler/y0;->f(II)Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    :goto_f
    if-eqz v4, :cond_17

    .line 491
    .line 492
    const/4 v4, 0x1

    .line 493
    goto :goto_10

    .line 494
    :cond_16
    move-object/from16 v22, v4

    .line 495
    .line 496
    move-object/from16 v24, v13

    .line 497
    .line 498
    :cond_17
    const/4 v4, 0x0

    .line 499
    :goto_10
    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/d0;->Q(Ljava/lang/String;Ljava/util/Map;)Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    invoke-static {v8, v3}, Lcom/sgscq/vpn/handler/d0;->N(Ljava/lang/String;Ljava/util/Map;)Z

    .line 504
    .line 505
    .line 506
    move-result v13

    .line 507
    move-object/from16 v20, v5

    .line 508
    .line 509
    const-string v5, "1"

    .line 510
    .line 511
    if-eqz v14, :cond_1a

    .line 512
    .line 513
    if-nez v7, :cond_1a

    .line 514
    .line 515
    const-string v7, "claimed_"

    .line 516
    .line 517
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    const-string v7, "surrender_list"

    .line 525
    .line 526
    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    move-object/from16 v23, v11

    .line 531
    .line 532
    instance-of v11, v7, Ljava/util/List;

    .line 533
    .line 534
    if-eqz v11, :cond_18

    .line 535
    .line 536
    check-cast v7, Ljava/util/List;

    .line 537
    .line 538
    goto :goto_11

    .line 539
    :cond_18
    new-instance v7, Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .line 543
    .line 544
    :goto_11
    const-string v11, "rewards"

    .line 545
    .line 546
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    move/from16 v25, v9

    .line 551
    .line 552
    instance-of v9, v11, Ljava/util/List;

    .line 553
    .line 554
    if-eqz v9, :cond_19

    .line 555
    .line 556
    check-cast v11, Ljava/util/List;

    .line 557
    .line 558
    goto :goto_12

    .line 559
    :cond_19
    new-instance v11, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .line 563
    .line 564
    :goto_12
    invoke-static {v0, v10, v7, v11}, Lcom/sgscq/vpn/handler/d0;->J(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/sgscq/vpn/handler/b0;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    invoke-static {v12, v7}, Lcom/sgscq/vpn/handler/y0;->g(Lcom/sgscq/vpn/handler/b0;Lcom/sgscq/vpn/handler/b0;)V

    .line 569
    .line 570
    .line 571
    const/4 v7, 0x1

    .line 572
    goto :goto_13

    .line 573
    :cond_1a
    move/from16 v25, v9

    .line 574
    .line 575
    move-object/from16 v23, v11

    .line 576
    .line 577
    const/4 v7, 0x0

    .line 578
    :goto_13
    if-eqz v4, :cond_1d

    .line 579
    .line 580
    if-nez v13, :cond_1d

    .line 581
    .line 582
    const-string v9, "evolution_rewards"

    .line 583
    .line 584
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v11

    .line 588
    instance-of v13, v11, Ljava/util/List;

    .line 589
    .line 590
    if-eqz v13, :cond_1b

    .line 591
    .line 592
    check-cast v11, Ljava/util/List;

    .line 593
    .line 594
    goto :goto_14

    .line 595
    :cond_1b
    new-instance v11, Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .line 599
    .line 600
    :goto_14
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 601
    .line 602
    .line 603
    move-result v11

    .line 604
    if-nez v11, :cond_1d

    .line 605
    .line 606
    const-string v7, "claimed_evolution_"

    .line 607
    .line 608
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    const-string v7, "evolution_soul_granted_"

    .line 616
    .line 617
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    instance-of v7, v5, Ljava/util/List;

    .line 629
    .line 630
    if-eqz v7, :cond_1c

    .line 631
    .line 632
    check-cast v5, Ljava/util/List;

    .line 633
    .line 634
    goto :goto_15

    .line 635
    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .line 639
    .line 640
    :goto_15
    invoke-static {v0, v10, v15, v5}, Lcom/sgscq/vpn/handler/d0;->J(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Lcom/sgscq/vpn/handler/b0;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-static {v12, v5}, Lcom/sgscq/vpn/handler/y0;->g(Lcom/sgscq/vpn/handler/b0;Lcom/sgscq/vpn/handler/b0;)V

    .line 645
    .line 646
    .line 647
    const/4 v5, 0x1

    .line 648
    const/4 v7, 0x1

    .line 649
    goto :goto_16

    .line 650
    :cond_1d
    const/4 v5, 0x0

    .line 651
    :goto_16
    if-eqz v7, :cond_1e

    .line 652
    .line 653
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    const/4 v9, 0x1

    .line 657
    iput-boolean v9, v1, Lcom/sgscq/vpn/handler/j;->a:Z

    .line 658
    .line 659
    iput-boolean v9, v1, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 660
    .line 661
    const/4 v9, 0x1

    .line 662
    goto :goto_17

    .line 663
    :cond_1e
    move/from16 v9, v19

    .line 664
    .line 665
    :goto_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    if-eqz v10, :cond_20

    .line 670
    .line 671
    if-eqz v7, :cond_1f

    .line 672
    .line 673
    goto :goto_18

    .line 674
    :cond_1f
    move-object/from16 v4, v22

    .line 675
    .line 676
    goto/16 :goto_1c

    .line 677
    .line 678
    :cond_20
    :goto_18
    if-eqz v14, :cond_22

    .line 679
    .line 680
    if-eqz v25, :cond_21

    .line 681
    .line 682
    if-eqz v4, :cond_22

    .line 683
    .line 684
    :cond_21
    const/4 v4, 0x1

    .line 685
    goto :goto_19

    .line 686
    :cond_22
    const/4 v4, 0x0

    .line 687
    :goto_19
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v10

    .line 691
    const-string v11, "complete_list"

    .line 692
    .line 693
    if-eqz v10, :cond_23

    .line 694
    .line 695
    move-object/from16 v10, v23

    .line 696
    .line 697
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    invoke-static {v6}, Lcom/sgscq/vpn/handler/y0;->n(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 702
    .line 703
    .line 704
    move-result-object v6

    .line 705
    goto :goto_1a

    .line 706
    :cond_23
    move-object/from16 v10, v23

    .line 707
    .line 708
    :goto_1a
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 709
    .line 710
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 711
    .line 712
    .line 713
    move-object/from16 v14, v20

    .line 714
    .line 715
    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    invoke-interface {v13, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    const-string v6, "item_id"

    .line 722
    .line 723
    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v14

    .line 727
    invoke-interface {v13, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    move-object/from16 v14, v24

    .line 735
    .line 736
    invoke-interface {v13, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    const-string v4, "02"

    .line 740
    .line 741
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    const-string v15, "surrender_dialog"

    .line 746
    .line 747
    invoke-interface {v13, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    const-string v7, "is_receive"

    .line 755
    .line 756
    invoke-interface {v13, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    if-eqz v5, :cond_24

    .line 760
    .line 761
    const-string v4, "evolution_item_id"

    .line 762
    .line 763
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    invoke-interface {v13, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    const-string v4, "evolution_complete_list"

    .line 771
    .line 772
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-static {v4}, Lcom/sgscq/vpn/handler/y0;->n(Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-interface {v13, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    const-string v4, "evolution_all_status"

    .line 784
    .line 785
    invoke-virtual {v10, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    invoke-static {v4}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v4

    .line 797
    invoke-interface {v13, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    :cond_24
    move-object/from16 v4, v22

    .line 801
    .line 802
    invoke-interface {v4, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    iget v5, v12, Lcom/sgscq/vpn/handler/b0;->h:I

    .line 806
    .line 807
    if-lez v5, :cond_26

    .line 808
    .line 809
    const/4 v5, 0x1

    .line 810
    iput-boolean v5, v1, Lcom/sgscq/vpn/handler/j;->b:Z

    .line 811
    .line 812
    goto :goto_1c

    .line 813
    :cond_25
    :goto_1b
    move/from16 v21, v7

    .line 814
    .line 815
    move/from16 v19, v9

    .line 816
    .line 817
    move/from16 v9, v19

    .line 818
    .line 819
    :cond_26
    :goto_1c
    move/from16 v5, v17

    .line 820
    .line 821
    move-object/from16 v8, v18

    .line 822
    .line 823
    move/from16 v7, v21

    .line 824
    .line 825
    goto/16 :goto_2

    .line 826
    .line 827
    :cond_27
    move/from16 v17, v5

    .line 828
    .line 829
    move/from16 v21, v7

    .line 830
    .line 831
    move/from16 v19, v9

    .line 832
    .line 833
    if-nez v19, :cond_28

    .line 834
    .line 835
    goto :goto_1d

    .line 836
    :cond_28
    add-int/lit8 v7, v21, 0x1

    .line 837
    .line 838
    move/from16 v5, v17

    .line 839
    .line 840
    goto/16 :goto_1

    .line 841
    .line 842
    :cond_29
    :goto_1d
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-nez v0, :cond_2a

    .line 847
    .line 848
    const-string v0, "general_list"

    .line 849
    .line 850
    const/4 v2, 0x0

    .line 851
    new-array v2, v2, [Ljava/lang/Object;

    .line 852
    .line 853
    invoke-static {v0, v4, v2}, Lcom/sgscq/vpn/p5;->z0(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    iput-object v0, v1, Lcom/sgscq/vpn/handler/j;->d:Ljava/lang/Object;

    .line 858
    .line 859
    :cond_2a
    :goto_1e
    return-object v1
.end method

.method public static d(Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/Set;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 6
    .line 7
    if-gtz p3, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    const-string v0, "surrender_progress"

    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v2, v1, Ljava/util/Map;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    check-cast v1, Ljava/util/Map;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    :goto_0
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v3, 0x0

    .line 39
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_11

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/util/Map;

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const-string v5, "surrender_tasks"

    .line 56
    .line 57
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_2
    instance-of v5, v4, Ljava/util/List;

    .line 62
    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    instance-of v6, v5, Ljava/util/Map;

    .line 83
    .line 84
    if-nez v6, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    check-cast v5, Ljava/util/Map;

    .line 88
    .line 89
    const-string v6, "surrender_type"

    .line 90
    .line 91
    const-string v7, ""

    .line 92
    .line 93
    invoke-static {v5, v6, v7, p2}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_7

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    const-string v6, "38"

    .line 101
    .line 102
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_f

    .line 107
    .line 108
    if-eqz p4, :cond_e

    .line 109
    .line 110
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_8
    const-string v6, "limit_first"

    .line 119
    .line 120
    const-string v8, "limit_second"

    .line 121
    .line 122
    const-string v9, "limit_third"

    .line 123
    .line 124
    filled-new-array {v6, v8, v9}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_a

    .line 141
    .line 142
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    check-cast v8, Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-nez v9, :cond_9

    .line 161
    .line 162
    const-string v9, "0"

    .line 163
    .line 164
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_9

    .line 169
    .line 170
    invoke-interface {p4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_9

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_a
    const-string v6, "source"

    .line 178
    .line 179
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    instance-of v8, v6, Ljava/util/List;

    .line 184
    .line 185
    if-nez v8, :cond_b

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_b
    check-cast v6, Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_e

    .line 199
    .line 200
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    instance-of v9, v8, Ljava/util/Map;

    .line 205
    .line 206
    if-nez v9, :cond_d

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_d
    check-cast v8, Ljava/util/Map;

    .line 210
    .line 211
    const-string v9, "param_value"

    .line 212
    .line 213
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    if-eqz v8, :cond_c

    .line 218
    .line 219
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-interface {p4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_c

    .line 228
    .line 229
    :goto_5
    const/4 v6, 0x1

    .line 230
    goto :goto_7

    .line 231
    :cond_e
    :goto_6
    const/4 v6, 0x0

    .line 232
    :goto_7
    if-nez v6, :cond_f

    .line 233
    .line 234
    goto/16 :goto_3

    .line 235
    .line 236
    :cond_f
    const-string v6, "surrender_id"

    .line 237
    .line 238
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-nez v6, :cond_5

    .line 251
    .line 252
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_10

    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :cond_10
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v6

    .line 268
    int-to-long v8, p3

    .line 269
    add-long/2addr v6, v8

    .line 270
    const-wide/32 v8, 0x7fffffff

    .line 271
    .line 272
    .line 273
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 274
    .line 275
    .line 276
    move-result-wide v6

    .line 277
    long-to-int v3, v6

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const/4 v3, 0x1

    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_11
    if-eqz v3, :cond_12

    .line 289
    .line 290
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    :cond_12
    :goto_8
    return-void
.end method

.method public static e(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static f(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    :cond_1
    if-lt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static g(Lcom/sgscq/vpn/handler/b0;Lcom/sgscq/vpn/handler/b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->e:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->f:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sgscq/vpn/handler/b0;->g:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sgscq/vpn/handler/b0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lcom/sgscq/vpn/handler/b0;->h:I

    iget v1, p1, Lcom/sgscq/vpn/handler/b0;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sgscq/vpn/handler/b0;->h:I

    iget-boolean v0, p0, Lcom/sgscq/vpn/handler/b0;->i:Z

    iget-boolean p1, p1, Lcom/sgscq/vpn/handler/b0;->i:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sgscq/vpn/handler/b0;->i:Z

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)J
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    const-wide/32 v1, 0x7fffffff

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gtz p0, :cond_1

    return-wide v3

    :cond_1
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v3
.end method

.method public static j(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    if-eqz p2, :cond_e

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    const-string v0, "surrender_progress"

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v1, Ljava/util/Map;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_d

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/util/Map;

    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v6, "surrender_tasks"

    .line 63
    .line 64
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :goto_2
    instance-of v6, v5, Ljava/util/List;

    .line 69
    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    check-cast v5, Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    instance-of v7, v6, Ljava/util/Map;

    .line 90
    .line 91
    if-nez v7, :cond_6

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_6
    check-cast v6, Ljava/util/Map;

    .line 95
    .line 96
    const-string v7, "surrender_type"

    .line 97
    .line 98
    const-string v8, ""

    .line 99
    .line 100
    const-string v9, "18"

    .line 101
    .line 102
    invoke-static {v6, v7, v8, v9}, Lc/a;->B(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    const-string v7, "surrender_id"

    .line 110
    .line 111
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-nez v9, :cond_5

    .line 124
    .line 125
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-nez v9, :cond_8

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    const-string v9, "limit_first"

    .line 133
    .line 134
    const-string v10, "limit_second"

    .line 135
    .line 136
    const-string v11, "limit_third"

    .line 137
    .line 138
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    move v10, v3

    .line 151
    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_b

    .line 156
    .line 157
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    check-cast v11, Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {v6, v11, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    if-nez v12, :cond_9

    .line 176
    .line 177
    const-string v12, "0"

    .line 178
    .line 179
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_a

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_a
    invoke-interface {p2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-static {v11}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v11

    .line 194
    long-to-int v11, v11

    .line 195
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    goto :goto_4

    .line 200
    :cond_b
    if-gtz v10, :cond_c

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_c
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v4}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    int-to-long v10, v10

    .line 212
    add-long/2addr v8, v10

    .line 213
    const-wide/32 v10, 0x7fffffff

    .line 214
    .line 215
    .line 216
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v8

    .line 220
    long-to-int v4, v8

    .line 221
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const/4 v4, 0x1

    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_d
    if-eqz v4, :cond_e

    .line 232
    .line 233
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    :cond_e
    :goto_5
    return-void
.end method

.method public static k(II)I
    .locals 4

    .line 1
    int-to-long v0, p0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    int-to-long p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    add-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static l(Ljava/util/Map;Ljava/util/List;Lcom/sgscq/vpn/handler/b0;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_6

    .line 7
    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v3, "surrender_status"

    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "surrender_id"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "govern_claimed_"

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Lcom/sgscq/vpn/handler/y0;->e(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string v5, "1"

    .line 82
    .line 83
    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    const-string v3, "govern_value"

    .line 90
    .line 91
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    long-to-int v2, v2

    .line 100
    invoke-static {v1, v2}, Lcom/sgscq/vpn/handler/y0;->k(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_5
    const-string p1, "surrender_progress"

    .line 113
    .line 114
    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_6

    .line 118
    .line 119
    const-string p1, "govern"

    .line 120
    .line 121
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-static {p3}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    long-to-int p3, v2

    .line 130
    invoke-static {p3, v1}, Lcom/sgscq/vpn/handler/y0;->k(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget p0, p2, Lcom/sgscq/vpn/handler/b0;->h:I

    .line 142
    .line 143
    sub-int/2addr v1, p3

    .line 144
    invoke-static {p0, v1}, Lcom/sgscq/vpn/handler/y0;->k(II)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    iput p0, p2, Lcom/sgscq/vpn/handler/b0;->h:I

    .line 149
    .line 150
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static m(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p7

    if-eqz p1, :cond_15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_15

    if-eqz v2, :cond_15

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_e

    :cond_0
    const-string v3, "surrender_rank_duration"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    const-string v5, "surrender_progress"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/util/Map;

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    if-nez v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    const-string v12, "surrender_tasks"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :goto_3
    instance-of v12, v11, Ljava/util/List;

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/util/Map;

    if-nez v13, :cond_5

    move-object/from16 v29, v3

    move-object/from16 v27, v5

    move-object/from16 v17, v7

    move-object/from16 p1, v8

    :goto_5
    move/from16 v26, v10

    move-object/from16 v25, v11

    goto/16 :goto_c

    :cond_5
    check-cast v12, Ljava/util/Map;

    const-string v13, "surrender_type"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, p2

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 p1, v8

    move-object/from16 v8, p3

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v16, :cond_6

    if-nez v13, :cond_6

    goto/16 :goto_b

    :cond_6
    const-string v13, "surrender_id"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    goto/16 :goto_b

    :cond_7
    move-object/from16 v17, v7

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/util/Map;

    if-eqz v8, :cond_8

    new-instance v8, Ljava/util/LinkedHashMap;

    check-cast v7, Ljava/util/Map;

    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_6

    :cond_8
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_6
    const-string v7, "checkpoint"

    invoke-interface {v8, v7, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v29, v3

    move-object/from16 v27, v5

    goto :goto_5

    :cond_9
    const-string v9, "current"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move/from16 v26, v10

    move-object/from16 v25, v11

    .line 1
    invoke-static {v14}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v10

    long-to-int v10, v10

    const-string v11, "total"

    .line 2
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 3
    invoke-static {v14}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v14

    long-to-int v14, v14

    const-string v15, "remainder_seconds"

    .line 4
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    .line 5
    invoke-static/range {v18 .. v18}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v5

    long-to-int v5, v5

    const-string v6, "limit_first"

    .line 6
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    .line 7
    invoke-static {v6}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x1

    .line 8
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v1, :cond_a

    if-gt v1, v3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    int-to-long v3, v5

    add-long v3, v3, p5

    const-wide/16 v5, 0xe10

    div-long v0, v3, v5

    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v5, 0xe10

    rem-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v10, v0}, Lcom/sgscq/vpn/handler/y0;->k(II)I

    move-result v3

    invoke-static {v14, v0}, Lcom/sgscq/vpn/handler/y0;->k(II)I

    move-result v14

    move/from16 v23, v1

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    if-eqz v16, :cond_c

    const/4 v0, 0x0

    move/from16 v23, v0

    goto :goto_8

    :cond_c
    move/from16 v23, v5

    :goto_8
    move/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v14

    move-object/from16 v22, v11

    move-object/from16 v24, v15

    .line 9
    invoke-static/range {v18 .. v24}, Lc/a;->s(ILjava/util/LinkedHashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 10
    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v30

    invoke-interface {v4, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "limit_second"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "progress_num"

    if-gtz v0, :cond_d

    .line 12
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v5

    long-to-int v0, v5

    const/4 v5, 0x1

    .line 14
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_9

    :cond_d
    const/4 v5, 0x1

    :goto_9
    move v9, v5

    if-eqz v16, :cond_e

    goto :goto_a

    :cond_e
    move v3, v14

    :goto_a
    if-lt v3, v0, :cond_f

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 16
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v6, v28

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/sgscq/vpn/handler/y0;->i(Ljava/lang/Object;)J

    move-result-wide v7

    int-to-long v10, v0

    cmp-long v1, v7, v10

    if-gez v1, :cond_11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v9

    goto :goto_d

    :cond_f
    move-object/from16 v6, v28

    goto :goto_c

    :cond_10
    :goto_b
    move-object/from16 v29, v3

    move-object/from16 v27, v5

    move-object/from16 v17, v7

    goto/16 :goto_5

    :cond_11
    :goto_c
    move/from16 v10, v26

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v1, p4

    move-object/from16 v7, v17

    move-object/from16 v11, v25

    move-object/from16 v5, v27

    move-object/from16 v3, v29

    goto/16 :goto_4

    :cond_12
    move/from16 v26, v10

    move-object/from16 v0, p0

    move/from16 v1, p4

    goto/16 :goto_2

    :cond_13
    move-object/from16 v29, v3

    move-object/from16 v27, v5

    move-object/from16 v0, p0

    if-eqz v9, :cond_14

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v10, :cond_15

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_e
    return-void
.end method

.method public static n(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
