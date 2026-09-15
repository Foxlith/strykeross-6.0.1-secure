.class public final Lz2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll4/l;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/a;->d:Z

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/a;->a:Ll4/l;

    return-void
.end method

.method public constructor <init>(Ll4/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/a;->d:Z

    iput-object p1, p0, Lz2/a;->a:Ll4/l;

    return-void
.end method

.method public static d(Ly2/a;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ly2/a;)I
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/a;->b()V

    iget-object v0, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/b;

    iget-object v2, v2, Ly2/b;->e:Ly2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lz2/a;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "geomac_pins_v2"

    .line 9
    .line 10
    iget-object v2, v0, Lz2/a;->a:Ll4/l;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v3, v0, Lz2/a;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, v0, Lz2/a;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_2

    .line 28
    .line 29
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge v4, v1, :cond_a

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Ly2/b;->a(Lorg/json/JSONObject;)Ly2/b;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    iget-object v6, v1, Ly2/b;->a:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_1

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "coordinates"

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_9

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/String;

    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const/16 v7, 0x3b

    .line 116
    .line 117
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-gez v7, :cond_5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v7, " "

    .line 135
    .line 136
    const-string v8, ""

    .line 137
    .line 138
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/16 v7, 0x2c

    .line 143
    .line 144
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-gez v7, :cond_6

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    :try_start_2
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v11

    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 166
    .line 167
    .line 168
    move-result-wide v13

    .line 169
    new-instance v2, Ly2/b;

    .line 170
    .line 171
    const-string v10, ""

    .line 172
    .line 173
    sget-object v15, Ly2/a;->a:Ly2/a;

    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v16

    .line 179
    const/16 v18, 0x0

    .line 180
    .line 181
    move-object v8, v2

    .line 182
    invoke-direct/range {v8 .. v18}, Ly2/b;-><init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .line 184
    .line 185
    move-object v6, v2

    .line 186
    :catch_0
    :cond_7
    :goto_2
    if-nez v6, :cond_8

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-object v7, v6, Ly2/b;->a:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_a

    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Lz2/a;->e()V

    .line 213
    .line 214
    .line 215
    :catch_1
    :cond_a
    :goto_3
    const/4 v1, 0x1

    .line 216
    iput-boolean v1, v0, Lz2/a;->d:Z

    .line 217
    .line 218
    return-void
.end method

.method public final declared-synchronized c(Ljava/util/ArrayList;)I
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/a;->b()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/b;

    if-eqz v1, :cond_0

    iget-object v2, v1, Ly2/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lz2/a;->b:Ljava/util/HashMap;

    iget-object v3, v1, Ly2/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lz2/a;->g(Ly2/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lz2/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/b;

    invoke-virtual {v2}, Ly2/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/a;->a:Ll4/l;

    const-string v2, "geomac_pins_v2"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final declared-synchronized f(Ly2/b;)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz2/a;->b()V

    iget-object v0, p1, Ly2/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/a;->b:Ljava/util/HashMap;

    iget-object v1, p1, Ly2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/b;

    iget-object v2, p1, Ly2/b;->e:Ly2/a;

    invoke-static {v2}, Lz2/a;->d(Ly2/a;)I

    move-result v2

    iget-object v3, v1, Ly2/b;->e:Ly2/a;

    invoke-static {v3}, Lz2/a;->d(Ly2/a;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v1, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-wide v2, p1, Ly2/b;->f:J

    iput-wide v2, v1, Ly2/b;->f:J

    iget-object v0, p1, Ly2/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Ly2/b;->b:Ljava/lang/String;

    iput-object p1, v1, Ly2/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lz2/a;->b:Ljava/util/HashMap;

    iget-object p1, p1, Ly2/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lz2/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lz2/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final g(Ly2/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz2/a;->b:Ljava/util/HashMap;

    iget-object v1, p1, Ly2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lz2/a;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v0, p1, Ly2/b;->e:Ly2/a;

    invoke-static {v0}, Lz2/a;->d(Ly2/a;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/b;

    iget-object v1, v1, Ly2/b;->e:Ly2/a;

    invoke-static {v1}, Lz2/a;->d(Ly2/a;)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
