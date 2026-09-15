.class public final synthetic Ln1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkDatabase;

.field public final synthetic b:Lv1/p;

.field public final synthetic c:Lv1/p;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Lv1/p;Lv1/p;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/c0;->a:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Ln1/c0;->b:Lv1/p;

    iput-object p3, p0, Ln1/c0;->c:Lv1/p;

    iput-object p4, p0, Ln1/c0;->d:Ljava/util/List;

    iput-object p5, p0, Ln1/c0;->e:Ljava/lang/String;

    iput-object p6, p0, Ln1/c0;->f:Ljava/util/Set;

    iput-boolean p7, p0, Ln1/c0;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "$workDatabase"

    .line 4
    .line 5
    iget-object v2, v1, Ln1/c0;->a:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-static {v2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "$newWorkSpec"

    .line 11
    .line 12
    iget-object v3, v1, Ln1/c0;->b:Lv1/p;

    .line 13
    .line 14
    invoke-static {v3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "$oldWorkSpec"

    .line 18
    .line 19
    iget-object v4, v1, Ln1/c0;->c:Lv1/p;

    .line 20
    .line 21
    invoke-static {v4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "$schedulers"

    .line 25
    .line 26
    iget-object v5, v1, Ln1/c0;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v5, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "$workSpecId"

    .line 32
    .line 33
    iget-object v13, v1, Ln1/c0;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v13, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "$tags"

    .line 39
    .line 40
    iget-object v14, v1, Ln1/c0;->f:Ljava/util/Set;

    .line 41
    .line 42
    invoke-static {v14, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->w()Lv1/t;

    .line 50
    .line 51
    .line 52
    move-result-object v15

    .line 53
    const/4 v5, 0x0

    .line 54
    iget v6, v4, Lv1/p;->b:I

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    iget v9, v4, Lv1/p;->k:I

    .line 59
    .line 60
    iget-wide v10, v4, Lv1/p;->n:J

    .line 61
    .line 62
    iget v4, v4, Lv1/p;->t:I

    .line 63
    .line 64
    const/4 v12, 0x1

    .line 65
    add-int/lit8 v16, v4, 0x1

    .line 66
    .line 67
    const v17, 0x7dbfd

    .line 68
    .line 69
    .line 70
    move-object v4, v5

    .line 71
    move v5, v6

    .line 72
    move-object v6, v7

    .line 73
    move-object v7, v8

    .line 74
    move v8, v9

    .line 75
    move-wide v9, v10

    .line 76
    move/from16 v11, v16

    .line 77
    .line 78
    move-object/from16 v16, v2

    .line 79
    .line 80
    move v2, v12

    .line 81
    move/from16 v12, v17

    .line 82
    .line 83
    invoke-static/range {v3 .. v12}, Lv1/p;->b(Lv1/p;Ljava/lang/String;ILjava/lang/String;Lm1/e;IJII)Lv1/p;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v5, 0x1a

    .line 90
    .line 91
    if-ge v4, v5, :cond_1

    .line 92
    .line 93
    iget-object v4, v3, Lv1/p;->j:Lm1/d;

    .line 94
    .line 95
    const-class v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iget-object v7, v3, Lv1/p;->c:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v7, v6}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_1

    .line 108
    .line 109
    iget-boolean v6, v4, Lm1/d;->d:Z

    .line 110
    .line 111
    if-nez v6, :cond_0

    .line 112
    .line 113
    iget-boolean v4, v4, Lm1/d;->e:Z

    .line 114
    .line 115
    if-eqz v4, :cond_1

    .line 116
    .line 117
    :cond_0
    new-instance v4, Landroidx/lifecycle/a0;

    .line 118
    .line 119
    const/4 v6, 0x2

    .line 120
    invoke-direct {v4, v6}, Landroidx/lifecycle/a0;-><init>(I)V

    .line 121
    .line 122
    .line 123
    iget-object v6, v3, Lv1/p;->e:Lm1/e;

    .line 124
    .line 125
    iget-object v6, v6, Lm1/e;->a:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v4, v6}, Landroidx/lifecycle/a0;->b(Ljava/util/HashMap;)V

    .line 128
    .line 129
    .line 130
    iget-object v6, v4, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string v8, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 133
    .line 134
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v6, Lm1/e;

    .line 138
    .line 139
    iget-object v4, v4, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-direct {v6, v4}, Lm1/e;-><init>(Ljava/util/HashMap;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v6}, Lm1/e;->b(Lm1/e;)[B

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v21

    .line 151
    const/16 v19, 0x0

    .line 152
    .line 153
    const/16 v23, 0x0

    .line 154
    .line 155
    const-wide/16 v24, 0x0

    .line 156
    .line 157
    const/16 v26, 0x0

    .line 158
    .line 159
    const v27, 0xfffeb

    .line 160
    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    move-object/from16 v18, v3

    .line 165
    .line 166
    move-object/from16 v22, v6

    .line 167
    .line 168
    invoke-static/range {v18 .. v27}, Lv1/p;->b(Lv1/p;Ljava/lang/String;ILjava/lang/String;Lm1/e;IJII)Lv1/p;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    :cond_1
    iget-object v4, v0, Lv1/r;->a:Ly0/w;

    .line 173
    .line 174
    invoke-virtual {v4}, Ly0/w;->b()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ly0/w;->c()V

    .line 178
    .line 179
    .line 180
    :try_start_0
    iget-object v5, v0, Lv1/r;->c:Lv1/q;

    .line 181
    .line 182
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 183
    .line 184
    .line 185
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-virtual {v5, v6, v3}, Lv1/q;->t(Lc1/h;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v6}, Lc1/h;->e()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 190
    .line 191
    .line 192
    :try_start_2
    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Ly0/w;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ly0/w;->k()V

    .line 199
    .line 200
    .line 201
    iget-object v3, v15, Lv1/t;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v3, Ly0/w;

    .line 204
    .line 205
    invoke-virtual {v3}, Ly0/w;->b()V

    .line 206
    .line 207
    .line 208
    iget-object v3, v15, Lv1/t;->d:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v3, Landroidx/appcompat/view/menu/d;

    .line 211
    .line 212
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/d;->c()Lc1/h;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-interface {v3, v2, v13}, Lc1/f;->d(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, v15, Lv1/t;->b:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v2, Ly0/w;

    .line 222
    .line 223
    invoke-virtual {v2}, Ly0/w;->c()V

    .line 224
    .line 225
    .line 226
    :try_start_3
    invoke-interface {v3}, Lc1/h;->e()I

    .line 227
    .line 228
    .line 229
    iget-object v2, v15, Lv1/t;->b:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v2, Ly0/w;

    .line 232
    .line 233
    invoke-virtual {v2}, Ly0/w;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .line 235
    .line 236
    iget-object v2, v15, Lv1/t;->b:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v2, Ly0/w;

    .line 239
    .line 240
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 241
    .line 242
    .line 243
    iget-object v2, v15, Lv1/t;->d:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v2, Landroidx/appcompat/view/menu/d;

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v15, v13, v14}, Lv1/t;->m(Ljava/lang/String;Ljava/util/Set;)V

    .line 251
    .line 252
    .line 253
    iget-boolean v2, v1, Ln1/c0;->g:Z

    .line 254
    .line 255
    if-nez v2, :cond_2

    .line 256
    .line 257
    const-wide/16 v2, -0x1

    .line 258
    .line 259
    invoke-virtual {v0, v13, v2, v3}, Lv1/r;->j(Ljava/lang/String;J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {v16 .. v16}, Landroidx/work/impl/WorkDatabase;->u()Lv1/m;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, v13}, Lv1/m;->b(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_2
    return-void

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    iget-object v2, v15, Lv1/t;->b:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v2, Ly0/w;

    .line 274
    .line 275
    invoke-virtual {v2}, Ly0/w;->k()V

    .line 276
    .line 277
    .line 278
    iget-object v2, v15, Lv1/t;->d:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v2, Landroidx/appcompat/view/menu/d;

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    goto :goto_0

    .line 288
    :catchall_2
    move-exception v0

    .line 289
    :try_start_4
    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/d;->q(Lc1/h;)V

    .line 290
    .line 291
    .line 292
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    :goto_0
    invoke-virtual {v4}, Ly0/w;->k()V

    .line 294
    .line 295
    .line 296
    throw v0
.end method
