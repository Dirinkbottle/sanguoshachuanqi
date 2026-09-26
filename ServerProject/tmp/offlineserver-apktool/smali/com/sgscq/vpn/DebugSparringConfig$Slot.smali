.class public final Lcom/sgscq/vpn/DebugSparringConfig$Slot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cultivateAttr:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "cultivate_attr"
    .end annotation
.end field

.field public deputyGeneralIds:Ljava/util/List;
    .annotation runtime Lb/b;
        value = "deputy_general_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extreme:Z

.field public generalId:Ljava/lang/String;
    .annotation runtime Lb/b;
        value = "general_id"
    .end annotation
.end field

.field public position:I

.field public skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;
    .annotation runtime Lb/b;
        alternate = {
            "skillGroup"
        }
        value = "skills"
    .end annotation
.end field

.field public skillId:Ljava/lang/String;
    .annotation runtime Lb/b;
        alternate = {
            "equipped_skill_id",
            "skill"
        }
        value = "skill_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    const-string v1, "none"

    iput-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    iput-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    new-instance v1, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    invoke-direct {v1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;-><init>()V

    iput-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    new-instance v1, Ljava/util/ArrayList;

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    return-void
.end method

.method public static empty(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;
    .locals 1

    new-instance v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    invoke-direct {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;-><init>()V

    iput p0, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    return-object v0
.end method


# virtual methods
.method public boundDeputyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public normalized(I)Lcom/sgscq/vpn/DebugSparringConfig$Slot;
    .locals 5

    .line 1
    new-instance v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sgscq/vpn/DebugSparringConfig$Slot;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->position:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "attack"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const-string v2, "none"

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string v1, "defense"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, "hp"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    const-string v1, "wisdom"

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object p1, v2

    .line 62
    :cond_1
    :goto_0
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    move p1, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-boolean p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 74
    .line 75
    :goto_1
    iput-boolean p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 76
    .line 77
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;-><init>()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->normalized()Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_2
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;->firstSkillId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 114
    .line 115
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 116
    .line 117
    const-string v3, ""

    .line 118
    .line 119
    filled-new-array {v3, v3}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 131
    .line 132
    iget-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->generalId:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    :goto_3
    iget-object p1, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const/4 v2, 0x2

    .line 151
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ge v1, p1, :cond_6

    .line 156
    .line 157
    iget-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 158
    .line 159
    iget-object v2, p0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->deputyGeneralIds:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v2}, Lcom/sgscq/vpn/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    new-instance p1, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 176
    .line 177
    invoke-direct {p1}, Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object p1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillGroup:Lcom/sgscq/vpn/DebugSparringConfig$SkillGroup;

    .line 181
    .line 182
    iput-object v3, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->skillId:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v2, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->cultivateAttr:Ljava/lang/String;

    .line 185
    .line 186
    iput-boolean v1, v0, Lcom/sgscq/vpn/DebugSparringConfig$Slot;->extreme:Z

    .line 187
    .line 188
    :cond_6
    return-object v0
.end method
