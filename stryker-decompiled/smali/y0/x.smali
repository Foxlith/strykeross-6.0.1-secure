.class public final Ly0/x;
.super Landroidx/fragment/app/t0;
.source "SourceFile"


# instance fields
.field public b:Ly0/b;

.field public final c:Le0/j;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ly0/b;Le0/j;)V
    .locals 1

    .line 1
    iget v0, p2, Le0/j;->a:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/t0;-><init>(I)V

    iput-object p1, p0, Ly0/x;->b:Ly0/b;

    iput-object p2, p0, Ly0/x;->c:Le0/j;

    const-string p1, "5181942b9ebc31ce68dacb56c16fd79f"

    iput-object p1, p0, Ly0/x;->d:Ljava/lang/String;

    const-string p1, "ae2044fb577e65ee8bb576ca48a2f06e"

    iput-object p1, p0, Ly0/x;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ld1/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ld1/c;)V
    .locals 4

    .line 1
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v3}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ly0/x;->c:Le0/j;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Le0/j;->a(Ld1/c;)V

    .line 35
    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Le0/j;->c(Ld1/c;)Lf4/i;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v3, v1, Lf4/i;->a:Z

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Pre-packaged database has an invalid schema: "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Lf4/i;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Ly0/x;->g(Ld1/c;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Le0/j;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    .line 76
    .line 77
    iget-object v0, p1, Ly0/w;->f:Ljava/util/List;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_2
    if-ge v2, v0, :cond_3

    .line 86
    .line 87
    iget-object v1, p1, Ly0/w;->f:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ly0/v;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    return-void

    .line 102
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :catchall_1
    move-exception v1

    .line 104
    invoke-static {v0, p1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v1
.end method

.method public final d(Ld1/c;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ly0/x;->f(Ld1/c;II)V

    return-void
.end method

.method public final e(Ld1/c;)V
    .locals 9

    .line 1
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v4}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    new-instance v0, Lc1/a;

    .line 34
    .line 35
    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lc1/a;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ld1/c;->k(Lc1/g;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move-object v1, v4

    .line 58
    :goto_1
    invoke-static {v0, v4}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Ly0/x;->d:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    iget-object v5, p0, Ly0/x;->e:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v5, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 81
    .line 82
    const-string v3, ", found: "

    .line 83
    .line 84
    invoke-static {v2, v0, v3, v1}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    :catchall_2
    move-exception v1

    .line 94
    invoke-static {v0, p1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_3
    iget-object v0, p0, Ly0/x;->c:Le0/j;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Le0/j;->c(Ld1/c;)Lf4/i;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-boolean v1, v0, Lf4/i;->a:Z

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ly0/x;->g(Ld1/c;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_3
    iget-object v0, p0, Ly0/x;->c:Le0/j;

    .line 115
    .line 116
    iget-object v1, v0, Le0/j;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    .line 119
    .line 120
    iput-object p1, v1, Ly0/w;->a:Lc1/b;

    .line 121
    .line 122
    const-string v1, "PRAGMA foreign_keys = ON"

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ld1/c;->c(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Le0/j;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v1, v1, Ly0/w;->d:Ly0/k;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object v5, v1, Ly0/k;->l:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter v5

    .line 142
    :try_start_3
    iget-boolean v6, v1, Ly0/k;->g:Z

    .line 143
    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    const-string v1, "ROOM"

    .line 147
    .line 148
    const-string v2, "Invalidation tracker is initialized twice :/."

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 151
    .line 152
    .line 153
    :goto_4
    monitor-exit v5

    .line 154
    goto :goto_5

    .line 155
    :catchall_3
    move-exception p1

    .line 156
    goto :goto_7

    .line 157
    :cond_5
    :try_start_4
    const-string v6, "PRAGMA temp_store = MEMORY;"

    .line 158
    .line 159
    invoke-virtual {p1, v6}, Ld1/c;->c(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v6, "PRAGMA recursive_triggers=\'ON\';"

    .line 163
    .line 164
    invoke-virtual {p1, v6}, Ld1/c;->c(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v6, "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 168
    .line 169
    invoke-virtual {p1, v6}, Ld1/c;->c(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ly0/k;->d(Lc1/b;)V

    .line 173
    .line 174
    .line 175
    const-string v6, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    .line 176
    .line 177
    invoke-virtual {p1, v6}, Ld1/c;->f(Ljava/lang/String;)Lc1/h;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iput-object v6, v1, Ly0/k;->h:Lc1/h;

    .line 182
    .line 183
    iput-boolean v2, v1, Ly0/k;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :goto_5
    iget-object v1, v0, Le0/j;->b:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Landroidx/work/impl/WorkDatabase_Impl;

    .line 189
    .line 190
    iget-object v1, v1, Ly0/w;->f:Ljava/util/List;

    .line 191
    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    :goto_6
    if-ge v3, v1, :cond_6

    .line 199
    .line 200
    iget-object v2, v0, Le0/j;->b:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    .line 203
    .line 204
    iget-object v2, v2, Ly0/w;->f:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ly0/v;

    .line 211
    .line 212
    check-cast v2, Ln1/b;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ld1/c;->b()V

    .line 218
    .line 219
    .line 220
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v5, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    .line 223
    .line 224
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v5

    .line 231
    sget-wide v7, Ln1/w;->a:J

    .line 232
    .line 233
    sub-long/2addr v5, v7

    .line 234
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v5, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {p1, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Ld1/c;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :catchall_4
    move-exception v0

    .line 259
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_6
    iput-object v4, p0, Ly0/x;->b:Ly0/b;

    .line 264
    .line 265
    return-void

    .line 266
    :goto_7
    monitor-exit v5

    .line 267
    throw p1

    .line 268
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v2, "Pre-packaged database has an invalid schema: "

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v0, Lf4/i;->b:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :goto_8
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 291
    :catchall_5
    move-exception v1

    .line 292
    invoke-static {v0, p1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    throw v1
.end method

.method public final f(Ld1/c;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Ly0/x;->b:Ly0/b;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v6, v1, Ly0/x;->c:Le0/j;

    .line 13
    .line 14
    if-eqz v4, :cond_f

    .line 15
    .line 16
    iget-object v4, v4, Ly0/b;->d:Landroidx/lifecycle/a0;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    sget-object v4, Lx4/o;->a:Lx4/o;

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_0
    if-le v3, v2, :cond_1

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v9, v5

    .line 33
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    move v11, v2

    .line 39
    :cond_2
    if-eqz v9, :cond_3

    .line 40
    .line 41
    if-ge v11, v3, :cond_9

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-le v11, v3, :cond_9

    .line 45
    .line 46
    :goto_1
    iget-object v12, v4, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    check-cast v12, Ljava/util/TreeMap;

    .line 57
    .line 58
    if-nez v12, :cond_4

    .line 59
    .line 60
    :goto_2
    move-object v4, v7

    .line 61
    goto :goto_6

    .line 62
    :cond_4
    if-eqz v9, :cond_5

    .line 63
    .line 64
    invoke-virtual {v12}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {v12}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    :goto_3
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-eqz v14, :cond_8

    .line 82
    .line 83
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    check-cast v14, Ljava/lang/Integer;

    .line 88
    .line 89
    const-string v15, "targetVersion"

    .line 90
    .line 91
    if-eqz v9, :cond_7

    .line 92
    .line 93
    add-int/lit8 v8, v11, 0x1

    .line 94
    .line 95
    invoke-static {v14, v15}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-gt v8, v15, :cond_6

    .line 103
    .line 104
    if-gt v15, v3, :cond_6

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    invoke-static {v14, v15}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-gt v3, v8, :cond_6

    .line 115
    .line 116
    if-ge v8, v11, :cond_6

    .line 117
    .line 118
    :goto_4
    invoke-virtual {v12, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-static {v8}, Li5/a;->m(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    const/4 v8, 0x1

    .line 133
    goto :goto_5

    .line 134
    :cond_8
    move v8, v5

    .line 135
    :goto_5
    if-nez v8, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    move-object v4, v10

    .line 139
    :goto_6
    if-eqz v4, :cond_f

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v2, Ly4/b;

    .line 145
    .line 146
    invoke-direct {v2}, Ly4/b;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v3, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ld1/c;->s(Ljava/lang/String;)Landroid/database/Cursor;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    :goto_7
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_a

    .line 160
    .line 161
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v2, v6}, Ly4/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    move-object v2, v0

    .line 171
    goto :goto_a

    .line 172
    :cond_a
    invoke-static {v3, v7}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Lv1/f;->b(Ly4/b;)Ly4/b;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ly4/b;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_b
    :goto_8
    move-object v3, v2

    .line 184
    check-cast v3, Ly4/a;

    .line 185
    .line 186
    invoke-virtual {v3}, Ly4/a;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_c

    .line 191
    .line 192
    invoke-virtual {v3}, Ly4/a;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Ljava/lang/String;

    .line 197
    .line 198
    const-string v6, "triggerName"

    .line 199
    .line 200
    invoke-static {v3, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v6, "room_fts_content_sync_"

    .line 204
    .line 205
    invoke-static {v3, v6, v5}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_b

    .line 210
    .line 211
    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 212
    .line 213
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v0, v3}, Ld1/c;->c(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_d

    .line 230
    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Lz0/a;

    .line 236
    .line 237
    invoke-virtual {v3, v0}, Lz0/a;->a(Ld1/c;)V

    .line 238
    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_d
    invoke-static/range {p1 .. p1}, Le0/j;->c(Ld1/c;)Lf4/i;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-boolean v3, v2, Lf4/i;->a:Z

    .line 246
    .line 247
    if-eqz v3, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p1}, Ly0/x;->g(Ld1/c;)V

    .line 250
    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 254
    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v4, "Migration didn\'t properly handle: "

    .line 258
    .line 259
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v2, Lf4/i;->b:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :goto_a
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :catchall_1
    move-exception v0

    .line 277
    move-object v4, v0

    .line 278
    invoke-static {v3, v2}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw v4

    .line 282
    :cond_f
    iget-object v4, v1, Ly0/x;->b:Ly0/b;

    .line 283
    .line 284
    if-eqz v4, :cond_11

    .line 285
    .line 286
    invoke-virtual {v4, v2, v3}, Ly0/b;->a(II)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-nez v4, :cond_11

    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    const-string v2, "DROP TABLE IF EXISTS `Dependency`"

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string v2, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const-string v2, "DROP TABLE IF EXISTS `WorkTag`"

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v2, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v2, "DROP TABLE IF EXISTS `WorkName`"

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v2, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string v2, "DROP TABLE IF EXISTS `Preference`"

    .line 326
    .line 327
    invoke-virtual {v0, v2}, Ld1/c;->c(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v6, Le0/j;->b:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    .line 333
    .line 334
    iget-object v3, v2, Ly0/w;->f:Ljava/util/List;

    .line 335
    .line 336
    if-eqz v3, :cond_10

    .line 337
    .line 338
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    :goto_b
    if-ge v5, v3, :cond_10

    .line 343
    .line 344
    iget-object v4, v2, Ly0/w;->f:Ljava/util/List;

    .line 345
    .line 346
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    check-cast v4, Ly0/v;

    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    add-int/lit8 v5, v5, 0x1

    .line 356
    .line 357
    goto :goto_b

    .line 358
    :cond_10
    invoke-static/range {p1 .. p1}, Le0/j;->a(Ld1/c;)V

    .line 359
    .line 360
    .line 361
    :goto_c
    return-void

    .line 362
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 363
    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v5, "A migration from "

    .line 367
    .line 368
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v2, " to "

    .line 375
    .line 376
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    .line 383
    .line 384
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0
.end method

.method public final g(Ld1/c;)V
    .locals 3

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly0/x;->d:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "hash"

    .line 9
    .line 10
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "\')"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
