.class public final Lr/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq/e;

.field public b:Z

.field public c:Z

.field public d:Lq/e;

.field public e:Ljava/util/ArrayList;

.field public f:Landroidx/constraintlayout/widget/e;

.field public g:Lr/b;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Lr/f;ILjava/util/ArrayList;Lr/l;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lr/f;->d:Lr/o;

    .line 2
    .line 3
    iget-object v0, p1, Lr/o;->c:Lr/l;

    .line 4
    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lr/e;->a:Lq/e;

    .line 8
    .line 9
    iget-object v1, v0, Lq/d;->d:Lr/k;

    .line 10
    .line 11
    if-eq p1, v1, :cond_a

    .line 12
    .line 13
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    if-nez p4, :cond_1

    .line 20
    .line 21
    new-instance p4, Lr/l;

    .line 22
    .line 23
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p4, Lr/l;->a:Lr/o;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p4, Lr/l;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p1, p4, Lr/l;->a:Lr/o;

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-object p4, p1, Lr/o;->c:Lr/l;

    .line 42
    .line 43
    iget-object v0, p4, Lr/l;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lr/o;->h:Lr/f;

    .line 49
    .line 50
    iget-object v1, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lr/d;

    .line 67
    .line 68
    instance-of v3, v2, Lr/f;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    check-cast v2, Lr/f;

    .line 73
    .line 74
    invoke-virtual {p0, v2, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p1, Lr/o;->i:Lr/f;

    .line 79
    .line 80
    iget-object v2, v1, Lr/f;->k:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lr/d;

    .line 97
    .line 98
    instance-of v4, v3, Lr/f;

    .line 99
    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    check-cast v3, Lr/f;

    .line 103
    .line 104
    invoke-virtual {p0, v3, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v2, 0x1

    .line 109
    if-ne p2, v2, :cond_7

    .line 110
    .line 111
    instance-of v3, p1, Lr/m;

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move-object v3, p1

    .line 116
    check-cast v3, Lr/m;

    .line 117
    .line 118
    iget-object v3, v3, Lr/m;->k:Lr/f;

    .line 119
    .line 120
    iget-object v3, v3, Lr/f;->k:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lr/d;

    .line 137
    .line 138
    instance-of v5, v4, Lr/f;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    check-cast v4, Lr/f;

    .line 143
    .line 144
    invoke-virtual {p0, v4, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v0, v0, Lr/f;->l:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lr/f;

    .line 165
    .line 166
    invoke-virtual {p0, v3, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v0, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lr/f;

    .line 187
    .line 188
    invoke-virtual {p0, v1, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    if-ne p2, v2, :cond_a

    .line 193
    .line 194
    instance-of v0, p1, Lr/m;

    .line 195
    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    check-cast p1, Lr/m;

    .line 199
    .line 200
    iget-object p1, p1, Lr/m;->k:Lr/f;

    .line 201
    .line 202
    iget-object p1, p1, Lr/f;->l:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lr/f;

    .line 219
    .line 220
    invoke-virtual {p0, v0, p2, p3, p4}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lq/e;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_27

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lq/d;

    .line 20
    .line 21
    iget-object v3, v2, Lq/d;->p0:[I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget v5, v3, v4

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    aget v3, v3, v9

    .line 28
    .line 29
    iget v6, v2, Lq/d;->g0:I

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    if-ne v6, v7, :cond_1

    .line 34
    .line 35
    iput-boolean v9, v2, Lq/d;->a:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v6, v2, Lq/d;->w:F

    .line 39
    .line 40
    const/high16 v10, 0x3f800000    # 1.0f

    .line 41
    .line 42
    cmpg-float v7, v6, v10

    .line 43
    .line 44
    const/4 v8, 0x3

    .line 45
    const/4 v11, 0x2

    .line 46
    if-gez v7, :cond_2

    .line 47
    .line 48
    if-ne v5, v8, :cond_2

    .line 49
    .line 50
    iput v11, v2, Lq/d;->r:I

    .line 51
    .line 52
    :cond_2
    iget v7, v2, Lq/d;->z:F

    .line 53
    .line 54
    cmpg-float v12, v7, v10

    .line 55
    .line 56
    if-gez v12, :cond_3

    .line 57
    .line 58
    if-ne v3, v8, :cond_3

    .line 59
    .line 60
    iput v11, v2, Lq/d;->s:I

    .line 61
    .line 62
    :cond_3
    iget v12, v2, Lq/d;->W:F

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    cmpl-float v12, v12, v13

    .line 66
    .line 67
    const/4 v13, 0x2

    .line 68
    const/4 v14, 0x1

    .line 69
    if-lez v12, :cond_9

    .line 70
    .line 71
    if-ne v5, v8, :cond_5

    .line 72
    .line 73
    if-eq v3, v13, :cond_4

    .line 74
    .line 75
    if-ne v3, v14, :cond_5

    .line 76
    .line 77
    :cond_4
    iput v8, v2, Lq/d;->r:I

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    if-ne v3, v8, :cond_7

    .line 81
    .line 82
    if-eq v5, v13, :cond_6

    .line 83
    .line 84
    if-ne v5, v14, :cond_7

    .line 85
    .line 86
    :cond_6
    :goto_1
    iput v8, v2, Lq/d;->s:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_7
    if-ne v5, v8, :cond_9

    .line 90
    .line 91
    if-ne v3, v8, :cond_9

    .line 92
    .line 93
    iget v12, v2, Lq/d;->r:I

    .line 94
    .line 95
    if-nez v12, :cond_8

    .line 96
    .line 97
    iput v8, v2, Lq/d;->r:I

    .line 98
    .line 99
    :cond_8
    iget v12, v2, Lq/d;->s:I

    .line 100
    .line 101
    if-nez v12, :cond_9

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    :goto_2
    iget-object v12, v2, Lq/d;->K:Lq/c;

    .line 105
    .line 106
    iget-object v15, v2, Lq/d;->I:Lq/c;

    .line 107
    .line 108
    if-ne v5, v8, :cond_b

    .line 109
    .line 110
    iget v10, v2, Lq/d;->r:I

    .line 111
    .line 112
    if-ne v10, v9, :cond_b

    .line 113
    .line 114
    iget-object v10, v15, Lq/c;->f:Lq/c;

    .line 115
    .line 116
    if-eqz v10, :cond_a

    .line 117
    .line 118
    iget-object v10, v12, Lq/c;->f:Lq/c;

    .line 119
    .line 120
    if-nez v10, :cond_b

    .line 121
    .line 122
    :cond_a
    move v5, v13

    .line 123
    :cond_b
    iget-object v10, v2, Lq/d;->L:Lq/c;

    .line 124
    .line 125
    iget-object v4, v2, Lq/d;->J:Lq/c;

    .line 126
    .line 127
    if-ne v3, v8, :cond_d

    .line 128
    .line 129
    iget v11, v2, Lq/d;->s:I

    .line 130
    .line 131
    if-ne v11, v9, :cond_d

    .line 132
    .line 133
    iget-object v11, v4, Lq/c;->f:Lq/c;

    .line 134
    .line 135
    if-eqz v11, :cond_c

    .line 136
    .line 137
    iget-object v11, v10, Lq/c;->f:Lq/c;

    .line 138
    .line 139
    if-nez v11, :cond_d

    .line 140
    .line 141
    :cond_c
    move v11, v13

    .line 142
    goto :goto_3

    .line 143
    :cond_d
    move v11, v3

    .line 144
    :goto_3
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 145
    .line 146
    iput v5, v3, Lr/o;->d:I

    .line 147
    .line 148
    iget v9, v2, Lq/d;->r:I

    .line 149
    .line 150
    iput v9, v3, Lr/o;->a:I

    .line 151
    .line 152
    iget-object v3, v2, Lq/d;->e:Lr/m;

    .line 153
    .line 154
    iput v11, v3, Lr/o;->d:I

    .line 155
    .line 156
    iget v8, v2, Lq/d;->s:I

    .line 157
    .line 158
    iput v8, v3, Lr/o;->a:I

    .line 159
    .line 160
    const/4 v3, 0x4

    .line 161
    if-eq v5, v3, :cond_e

    .line 162
    .line 163
    if-eq v5, v14, :cond_e

    .line 164
    .line 165
    if-ne v5, v13, :cond_f

    .line 166
    .line 167
    :cond_e
    if-eq v11, v3, :cond_24

    .line 168
    .line 169
    if-eq v11, v14, :cond_24

    .line 170
    .line 171
    if-ne v11, v13, :cond_f

    .line 172
    .line 173
    goto/16 :goto_11

    .line 174
    .line 175
    :cond_f
    iget-object v4, v0, Lq/d;->p0:[I

    .line 176
    .line 177
    iget-object v10, v2, Lq/d;->Q:[Lq/c;

    .line 178
    .line 179
    const/high16 v12, 0x3f000000    # 0.5f

    .line 180
    .line 181
    const/4 v15, 0x3

    .line 182
    if-ne v5, v15, :cond_10

    .line 183
    .line 184
    if-eq v11, v13, :cond_11

    .line 185
    .line 186
    if-ne v11, v14, :cond_10

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_10
    move v3, v15

    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_11
    :goto_4
    if-ne v9, v15, :cond_13

    .line 193
    .line 194
    if-ne v11, v13, :cond_12

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v8, 0x0

    .line 198
    move-object/from16 v3, p0

    .line 199
    .line 200
    move-object v4, v2

    .line 201
    move v5, v13

    .line 202
    move v7, v13

    .line 203
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 204
    .line 205
    .line 206
    :cond_12
    invoke-virtual {v2}, Lq/d;->l()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    int-to-float v3, v8

    .line 211
    iget v4, v2, Lq/d;->W:F

    .line 212
    .line 213
    mul-float/2addr v3, v4

    .line 214
    add-float/2addr v3, v12

    .line 215
    float-to-int v6, v3

    .line 216
    move-object/from16 v3, p0

    .line 217
    .line 218
    move-object v4, v2

    .line 219
    move v5, v14

    .line 220
    move v7, v14

    .line 221
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 222
    .line 223
    .line 224
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 225
    .line 226
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 227
    .line 228
    invoke-virtual {v2}, Lq/d;->r()I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 233
    .line 234
    .line 235
    iget-object v3, v2, Lq/d;->e:Lr/m;

    .line 236
    .line 237
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 238
    .line 239
    invoke-virtual {v2}, Lq/d;->l()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 244
    .line 245
    .line 246
    const/4 v15, 0x1

    .line 247
    iput-boolean v15, v2, Lq/d;->a:Z

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_13
    const/4 v15, 0x1

    .line 252
    if-ne v9, v15, :cond_14

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    const/4 v8, 0x0

    .line 256
    move-object/from16 v3, p0

    .line 257
    .line 258
    move-object v4, v2

    .line 259
    move v5, v13

    .line 260
    move v7, v11

    .line 261
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 265
    .line 266
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 267
    .line 268
    invoke-virtual {v2}, Lq/d;->r()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    :goto_5
    iput v2, v3, Lr/g;->m:I

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_14
    const/4 v15, 0x2

    .line 277
    if-ne v9, v15, :cond_17

    .line 278
    .line 279
    const/4 v15, 0x0

    .line 280
    aget v13, v4, v15

    .line 281
    .line 282
    if-eq v13, v14, :cond_16

    .line 283
    .line 284
    if-ne v13, v3, :cond_15

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_15
    const/4 v3, 0x3

    .line 288
    goto :goto_9

    .line 289
    :cond_16
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    int-to-float v3, v3

    .line 294
    mul-float/2addr v6, v3

    .line 295
    add-float/2addr v6, v12

    .line 296
    float-to-int v6, v6

    .line 297
    invoke-virtual {v2}, Lq/d;->l()I

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    move-object/from16 v3, p0

    .line 302
    .line 303
    move-object v4, v2

    .line 304
    move v5, v14

    .line 305
    move v7, v11

    .line 306
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 310
    .line 311
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 312
    .line 313
    invoke-virtual {v2}, Lq/d;->r()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 318
    .line 319
    .line 320
    iget-object v3, v2, Lq/d;->e:Lr/m;

    .line 321
    .line 322
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 323
    .line 324
    invoke-virtual {v2}, Lq/d;->l()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 329
    .line 330
    .line 331
    const/4 v13, 0x1

    .line 332
    iput-boolean v13, v2, Lq/d;->a:Z

    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_17
    const/4 v13, 0x1

    .line 337
    const/4 v15, 0x0

    .line 338
    aget-object v3, v10, v15

    .line 339
    .line 340
    iget-object v3, v3, Lq/c;->f:Lq/c;

    .line 341
    .line 342
    if-eqz v3, :cond_18

    .line 343
    .line 344
    aget-object v3, v10, v13

    .line 345
    .line 346
    iget-object v3, v3, Lq/c;->f:Lq/c;

    .line 347
    .line 348
    if-nez v3, :cond_15

    .line 349
    .line 350
    :cond_18
    :goto_7
    const/4 v6, 0x0

    .line 351
    const/4 v8, 0x0

    .line 352
    move-object/from16 v3, p0

    .line 353
    .line 354
    move-object v4, v2

    .line 355
    const/4 v5, 0x2

    .line 356
    move v7, v11

    .line 357
    :goto_8
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 361
    .line 362
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 363
    .line 364
    invoke-virtual {v2}, Lq/d;->r()I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 369
    .line 370
    .line 371
    iget-object v3, v2, Lq/d;->e:Lr/m;

    .line 372
    .line 373
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 374
    .line 375
    invoke-virtual {v2}, Lq/d;->l()I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    .line 380
    .line 381
    .line 382
    const/4 v3, 0x1

    .line 383
    iput-boolean v3, v2, Lq/d;->a:Z

    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :goto_9
    if-ne v11, v3, :cond_1f

    .line 388
    .line 389
    const/4 v13, 0x2

    .line 390
    if-eq v5, v13, :cond_1a

    .line 391
    .line 392
    if-ne v5, v14, :cond_19

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_19
    move v10, v3

    .line 396
    const/4 v3, 0x1

    .line 397
    goto/16 :goto_f

    .line 398
    .line 399
    :cond_1a
    :goto_a
    if-ne v8, v3, :cond_1d

    .line 400
    .line 401
    if-ne v5, v13, :cond_1b

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    const/4 v8, 0x0

    .line 405
    move-object/from16 v3, p0

    .line 406
    .line 407
    move-object v4, v2

    .line 408
    move v5, v13

    .line 409
    move v7, v13

    .line 410
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 411
    .line 412
    .line 413
    :cond_1b
    invoke-virtual {v2}, Lq/d;->r()I

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    iget v3, v2, Lq/d;->W:F

    .line 418
    .line 419
    iget v4, v2, Lq/d;->X:I

    .line 420
    .line 421
    const/4 v5, -0x1

    .line 422
    if-ne v4, v5, :cond_1c

    .line 423
    .line 424
    const/high16 v4, 0x3f800000    # 1.0f

    .line 425
    .line 426
    div-float v3, v4, v3

    .line 427
    .line 428
    :cond_1c
    int-to-float v4, v6

    .line 429
    mul-float/2addr v4, v3

    .line 430
    add-float/2addr v4, v12

    .line 431
    float-to-int v8, v4

    .line 432
    :goto_b
    move-object/from16 v3, p0

    .line 433
    .line 434
    move-object v4, v2

    .line 435
    move v5, v14

    .line 436
    :goto_c
    move v7, v14

    .line 437
    goto :goto_8

    .line 438
    :cond_1d
    const/4 v3, 0x1

    .line 439
    if-ne v8, v3, :cond_1e

    .line 440
    .line 441
    const/4 v6, 0x0

    .line 442
    const/4 v8, 0x0

    .line 443
    move-object/from16 v3, p0

    .line 444
    .line 445
    move-object v4, v2

    .line 446
    const/4 v7, 0x2

    .line 447
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 448
    .line 449
    .line 450
    :goto_d
    iget-object v3, v2, Lq/d;->e:Lr/m;

    .line 451
    .line 452
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 453
    .line 454
    invoke-virtual {v2}, Lq/d;->l()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :cond_1e
    const/4 v3, 0x2

    .line 461
    if-ne v8, v3, :cond_21

    .line 462
    .line 463
    const/4 v3, 0x1

    .line 464
    aget v10, v4, v3

    .line 465
    .line 466
    if-eq v10, v14, :cond_20

    .line 467
    .line 468
    const/4 v3, 0x4

    .line 469
    if-ne v10, v3, :cond_1f

    .line 470
    .line 471
    goto :goto_e

    .line 472
    :cond_1f
    const/4 v3, 0x1

    .line 473
    const/4 v10, 0x3

    .line 474
    goto :goto_f

    .line 475
    :cond_20
    :goto_e
    invoke-virtual {v2}, Lq/d;->r()I

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    int-to-float v3, v3

    .line 484
    mul-float/2addr v7, v3

    .line 485
    add-float/2addr v7, v12

    .line 486
    float-to-int v8, v7

    .line 487
    move-object/from16 v3, p0

    .line 488
    .line 489
    move-object v4, v2

    .line 490
    goto :goto_c

    .line 491
    :cond_21
    aget-object v13, v10, v3

    .line 492
    .line 493
    iget-object v3, v13, Lq/c;->f:Lq/c;

    .line 494
    .line 495
    if-eqz v3, :cond_18

    .line 496
    .line 497
    const/4 v3, 0x3

    .line 498
    aget-object v10, v10, v3

    .line 499
    .line 500
    iget-object v3, v10, Lq/c;->f:Lq/c;

    .line 501
    .line 502
    if-nez v3, :cond_1f

    .line 503
    .line 504
    goto/16 :goto_7

    .line 505
    .line 506
    :goto_f
    if-ne v5, v10, :cond_0

    .line 507
    .line 508
    if-ne v11, v10, :cond_0

    .line 509
    .line 510
    if-eq v9, v3, :cond_23

    .line 511
    .line 512
    if-ne v8, v3, :cond_22

    .line 513
    .line 514
    goto :goto_10

    .line 515
    :cond_22
    const/4 v5, 0x2

    .line 516
    if-ne v8, v5, :cond_0

    .line 517
    .line 518
    if-ne v9, v5, :cond_0

    .line 519
    .line 520
    const/4 v5, 0x0

    .line 521
    aget v5, v4, v5

    .line 522
    .line 523
    if-ne v5, v14, :cond_0

    .line 524
    .line 525
    aget v4, v4, v3

    .line 526
    .line 527
    if-ne v4, v14, :cond_0

    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    int-to-float v3, v3

    .line 534
    mul-float/2addr v6, v3

    .line 535
    add-float/2addr v6, v12

    .line 536
    float-to-int v6, v6

    .line 537
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    int-to-float v3, v3

    .line 542
    mul-float/2addr v7, v3

    .line 543
    add-float/2addr v7, v12

    .line 544
    float-to-int v8, v7

    .line 545
    goto :goto_b

    .line 546
    :cond_23
    :goto_10
    const/4 v6, 0x0

    .line 547
    const/4 v8, 0x0

    .line 548
    move-object/from16 v3, p0

    .line 549
    .line 550
    move-object v4, v2

    .line 551
    const/4 v7, 0x2

    .line 552
    move v5, v7

    .line 553
    invoke-virtual/range {v3 .. v8}, Lr/e;->f(Lq/d;IIII)V

    .line 554
    .line 555
    .line 556
    iget-object v3, v2, Lq/d;->d:Lr/k;

    .line 557
    .line 558
    iget-object v3, v3, Lr/o;->e:Lr/g;

    .line 559
    .line 560
    invoke-virtual {v2}, Lq/d;->r()I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    iput v4, v3, Lr/g;->m:I

    .line 565
    .line 566
    goto :goto_d

    .line 567
    :cond_24
    :goto_11
    invoke-virtual {v2}, Lq/d;->r()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    const/4 v6, 0x4

    .line 572
    if-ne v5, v6, :cond_25

    .line 573
    .line 574
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    iget v5, v15, Lq/c;->g:I

    .line 579
    .line 580
    sub-int/2addr v3, v5

    .line 581
    iget v5, v12, Lq/c;->g:I

    .line 582
    .line 583
    sub-int/2addr v3, v5

    .line 584
    move v7, v3

    .line 585
    move v5, v14

    .line 586
    goto :goto_12

    .line 587
    :cond_25
    move v7, v3

    .line 588
    :goto_12
    invoke-virtual {v2}, Lq/d;->l()I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-ne v11, v6, :cond_26

    .line 593
    .line 594
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    iget v4, v4, Lq/c;->g:I

    .line 599
    .line 600
    sub-int/2addr v3, v4

    .line 601
    iget v4, v10, Lq/c;->g:I

    .line 602
    .line 603
    sub-int/2addr v3, v4

    .line 604
    move v8, v3

    .line 605
    goto :goto_13

    .line 606
    :cond_26
    move v8, v3

    .line 607
    move v14, v11

    .line 608
    :goto_13
    move-object/from16 v3, p0

    .line 609
    .line 610
    move-object v4, v2

    .line 611
    move v6, v7

    .line 612
    goto/16 :goto_c

    .line 613
    .line 614
    :cond_27
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lr/e;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lr/e;->d:Lq/e;

    .line 7
    .line 8
    iget-object v2, v1, Lq/d;->d:Lr/k;

    .line 9
    .line 10
    invoke-virtual {v2}, Lr/k;->f()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Lq/d;->e:Lr/m;

    .line 14
    .line 15
    invoke-virtual {v2}, Lr/m;->f()V

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lq/d;->d:Lr/k;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v2, v1, Lq/d;->e:Lr/m;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v4, :cond_8

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lq/d;

    .line 48
    .line 49
    instance-of v7, v4, Lq/h;

    .line 50
    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    new-instance v5, Lr/i;

    .line 54
    .line 55
    invoke-direct {v5, v4}, Lr/o;-><init>(Lq/d;)V

    .line 56
    .line 57
    .line 58
    iget-object v6, v4, Lq/d;->d:Lr/k;

    .line 59
    .line 60
    invoke-virtual {v6}, Lr/k;->f()V

    .line 61
    .line 62
    .line 63
    iget-object v6, v4, Lq/d;->e:Lr/m;

    .line 64
    .line 65
    invoke-virtual {v6}, Lr/m;->f()V

    .line 66
    .line 67
    .line 68
    check-cast v4, Lq/h;

    .line 69
    .line 70
    iget v4, v4, Lq/h;->u0:I

    .line 71
    .line 72
    iput v4, v5, Lr/o;->f:I

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v4}, Lq/d;->y()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    iget-object v7, v4, Lq/d;->b:Lr/c;

    .line 85
    .line 86
    if-nez v7, :cond_2

    .line 87
    .line 88
    new-instance v7, Lr/c;

    .line 89
    .line 90
    invoke-direct {v7, v6, v4}, Lr/c;-><init>(ILq/d;)V

    .line 91
    .line 92
    .line 93
    iput-object v7, v4, Lq/d;->b:Lr/c;

    .line 94
    .line 95
    :cond_2
    if-nez v3, :cond_3

    .line 96
    .line 97
    new-instance v3, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget-object v6, v4, Lq/d;->b:Lr/c;

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    iget-object v6, v4, Lq/d;->d:Lr/k;

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v4}, Lq/d;->z()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_7

    .line 118
    .line 119
    iget-object v6, v4, Lq/d;->c:Lr/c;

    .line 120
    .line 121
    if-nez v6, :cond_5

    .line 122
    .line 123
    new-instance v6, Lr/c;

    .line 124
    .line 125
    invoke-direct {v6, v5, v4}, Lr/c;-><init>(ILq/d;)V

    .line 126
    .line 127
    .line 128
    iput-object v6, v4, Lq/d;->c:Lr/c;

    .line 129
    .line 130
    :cond_5
    if-nez v3, :cond_6

    .line 131
    .line 132
    new-instance v3, Ljava/util/HashSet;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-object v5, v4, Lq/d;->c:Lr/c;

    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    iget-object v5, v4, Lq/d;->e:Lr/m;

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_3
    instance-of v5, v4, Lq/j;

    .line 149
    .line 150
    if-eqz v5, :cond_0

    .line 151
    .line 152
    new-instance v5, Lr/j;

    .line 153
    .line 154
    invoke-direct {v5, v4}, Lr/o;-><init>(Lq/d;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    if-eqz v3, :cond_9

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lr/o;

    .line 178
    .line 179
    invoke-virtual {v3}, Lr/o;->f()V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_c

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lr/o;

    .line 198
    .line 199
    iget-object v3, v2, Lr/o;->b:Lq/d;

    .line 200
    .line 201
    if-ne v3, v1, :cond_b

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_b
    invoke-virtual {v2}, Lr/o;->d()V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_c
    iget-object v0, p0, Lr/e;->h:Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lr/e;->a:Lq/e;

    .line 214
    .line 215
    iget-object v2, v1, Lq/d;->d:Lr/k;

    .line 216
    .line 217
    invoke-virtual {p0, v2, v6, v0}, Lr/e;->e(Lr/o;ILjava/util/ArrayList;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v1, Lq/d;->e:Lr/m;

    .line 221
    .line 222
    invoke-virtual {p0, v1, v5, v0}, Lr/e;->e(Lr/o;ILjava/util/ArrayList;)V

    .line 223
    .line 224
    .line 225
    iput-boolean v6, p0, Lr/e;->b:Z

    .line 226
    .line 227
    return-void
.end method

.method public final d(Lq/e;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lr/e;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v7, 0x0

    .line 14
    const-wide/16 v8, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v7, v4, :cond_d

    .line 17
    .line 18
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    check-cast v10, Lr/l;

    .line 23
    .line 24
    iget-object v10, v10, Lr/l;->a:Lr/o;

    .line 25
    .line 26
    instance-of v11, v10, Lr/c;

    .line 27
    .line 28
    if-eqz v11, :cond_0

    .line 29
    .line 30
    move-object v11, v10

    .line 31
    check-cast v11, Lr/c;

    .line 32
    .line 33
    iget v11, v11, Lr/o;->f:I

    .line 34
    .line 35
    if-eq v11, v2, :cond_2

    .line 36
    .line 37
    :goto_1
    move-object/from16 v18, v3

    .line 38
    .line 39
    move/from16 v16, v4

    .line 40
    .line 41
    move/from16 v17, v7

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :cond_0
    if-nez v2, :cond_1

    .line 48
    .line 49
    instance-of v11, v10, Lr/k;

    .line 50
    .line 51
    if-nez v11, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    instance-of v11, v10, Lr/m;

    .line 55
    .line 56
    if-nez v11, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-nez v2, :cond_3

    .line 60
    .line 61
    iget-object v11, v0, Lq/d;->d:Lr/k;

    .line 62
    .line 63
    :goto_2
    iget-object v11, v11, Lr/o;->h:Lr/f;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    iget-object v11, v0, Lq/d;->e:Lr/m;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_3
    if-nez v2, :cond_4

    .line 70
    .line 71
    iget-object v12, v0, Lq/d;->d:Lr/k;

    .line 72
    .line 73
    :goto_4
    iget-object v12, v12, Lr/o;->i:Lr/f;

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_4
    iget-object v12, v0, Lq/d;->e:Lr/m;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :goto_5
    iget-object v13, v10, Lr/o;->h:Lr/f;

    .line 80
    .line 81
    iget-object v13, v13, Lr/f;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v13, v10, Lr/o;->i:Lr/f;

    .line 88
    .line 89
    iget-object v14, v13, Lr/f;->l:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    invoke-virtual {v10}, Lr/o;->j()J

    .line 96
    .line 97
    .line 98
    move-result-wide v14

    .line 99
    iget-object v5, v10, Lr/o;->h:Lr/f;

    .line 100
    .line 101
    if-eqz v11, :cond_a

    .line 102
    .line 103
    if-eqz v12, :cond_a

    .line 104
    .line 105
    const-wide/16 v0, 0x0

    .line 106
    .line 107
    invoke-static {v5, v0, v1}, Lr/l;->b(Lr/f;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    move-object v6, v3

    .line 112
    move/from16 v16, v4

    .line 113
    .line 114
    invoke-static {v13, v0, v1}, Lr/l;->a(Lr/f;J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    sub-long/2addr v11, v14

    .line 119
    iget v0, v13, Lr/f;->f:I

    .line 120
    .line 121
    neg-int v1, v0

    .line 122
    move-object/from16 v18, v6

    .line 123
    .line 124
    move/from16 v17, v7

    .line 125
    .line 126
    int-to-long v6, v1

    .line 127
    cmp-long v1, v11, v6

    .line 128
    .line 129
    if-ltz v1, :cond_5

    .line 130
    .line 131
    int-to-long v0, v0

    .line 132
    add-long/2addr v11, v0

    .line 133
    :cond_5
    neg-long v0, v3

    .line 134
    sub-long/2addr v0, v14

    .line 135
    iget v3, v5, Lr/f;->f:I

    .line 136
    .line 137
    int-to-long v3, v3

    .line 138
    sub-long/2addr v0, v3

    .line 139
    cmp-long v6, v0, v3

    .line 140
    .line 141
    if-ltz v6, :cond_6

    .line 142
    .line 143
    sub-long/2addr v0, v3

    .line 144
    :cond_6
    iget-object v3, v10, Lr/o;->b:Lq/d;

    .line 145
    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    iget v3, v3, Lq/d;->d0:F

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_7
    const/4 v4, 0x1

    .line 152
    if-ne v2, v4, :cond_8

    .line 153
    .line 154
    iget v3, v3, Lq/d;->e0:F

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/high16 v3, -0x40800000    # -1.0f

    .line 161
    .line 162
    :goto_6
    const/4 v4, 0x0

    .line 163
    cmpl-float v4, v3, v4

    .line 164
    .line 165
    const/high16 v6, 0x3f800000    # 1.0f

    .line 166
    .line 167
    if-lez v4, :cond_9

    .line 168
    .line 169
    long-to-float v0, v0

    .line 170
    div-float/2addr v0, v3

    .line 171
    long-to-float v1, v11

    .line 172
    sub-float v4, v6, v3

    .line 173
    .line 174
    div-float/2addr v1, v4

    .line 175
    add-float/2addr v1, v0

    .line 176
    float-to-long v0, v1

    .line 177
    goto :goto_7

    .line 178
    :cond_9
    const-wide/16 v0, 0x0

    .line 179
    .line 180
    :goto_7
    long-to-float v0, v0

    .line 181
    mul-float v1, v0, v3

    .line 182
    .line 183
    const/high16 v4, 0x3f000000    # 0.5f

    .line 184
    .line 185
    add-float/2addr v1, v4

    .line 186
    float-to-long v10, v1

    .line 187
    invoke-static {v6, v3, v0, v4}, Landroid/support/v4/media/session/a;->e(FFFF)F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    float-to-long v0, v0

    .line 192
    add-long/2addr v10, v14

    .line 193
    add-long/2addr v10, v0

    .line 194
    iget v0, v5, Lr/f;->f:I

    .line 195
    .line 196
    int-to-long v0, v0

    .line 197
    add-long/2addr v0, v10

    .line 198
    iget v3, v13, Lr/f;->f:I

    .line 199
    .line 200
    int-to-long v3, v3

    .line 201
    sub-long/2addr v0, v3

    .line 202
    goto :goto_9

    .line 203
    :cond_a
    move-object/from16 v18, v3

    .line 204
    .line 205
    move/from16 v16, v4

    .line 206
    .line 207
    move/from16 v17, v7

    .line 208
    .line 209
    if-eqz v11, :cond_b

    .line 210
    .line 211
    iget v0, v5, Lr/f;->f:I

    .line 212
    .line 213
    int-to-long v0, v0

    .line 214
    invoke-static {v5, v0, v1}, Lr/l;->b(Lr/f;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    iget v3, v5, Lr/f;->f:I

    .line 219
    .line 220
    int-to-long v3, v3

    .line 221
    add-long/2addr v3, v14

    .line 222
    :goto_8
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    goto :goto_9

    .line 227
    :cond_b
    if-eqz v12, :cond_c

    .line 228
    .line 229
    iget v0, v13, Lr/f;->f:I

    .line 230
    .line 231
    int-to-long v0, v0

    .line 232
    invoke-static {v13, v0, v1}, Lr/l;->a(Lr/f;J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    iget v3, v13, Lr/f;->f:I

    .line 237
    .line 238
    neg-int v3, v3

    .line 239
    int-to-long v3, v3

    .line 240
    add-long/2addr v3, v14

    .line 241
    neg-long v0, v0

    .line 242
    goto :goto_8

    .line 243
    :cond_c
    iget v0, v5, Lr/f;->f:I

    .line 244
    .line 245
    int-to-long v0, v0

    .line 246
    invoke-virtual {v10}, Lr/o;->j()J

    .line 247
    .line 248
    .line 249
    move-result-wide v3

    .line 250
    add-long/2addr v3, v0

    .line 251
    iget v0, v13, Lr/f;->f:I

    .line 252
    .line 253
    int-to-long v0, v0

    .line 254
    sub-long v0, v3, v0

    .line 255
    .line 256
    :goto_9
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v8

    .line 260
    add-int/lit8 v7, v17, 0x1

    .line 261
    .line 262
    move-object/from16 v1, p0

    .line 263
    .line 264
    move-object/from16 v0, p1

    .line 265
    .line 266
    move/from16 v4, v16

    .line 267
    .line 268
    move-object/from16 v3, v18

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_d
    long-to-int v0, v8

    .line 273
    return v0
.end method

.method public final e(Lr/o;ILjava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lr/o;->h:Lr/f;

    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Lr/o;->i:Lr/f;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/d;

    instance-of v2, v1, Lr/f;

    if-eqz v2, :cond_1

    check-cast v1, Lr/f;

    :goto_1
    invoke-virtual {p0, v1, p2, p3, v3}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lr/o;

    if-eqz v2, :cond_0

    check-cast v1, Lr/o;

    iget-object v1, v1, Lr/o;->h:Lr/f;

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/d;

    instance-of v2, v1, Lr/f;

    if-eqz v2, :cond_4

    check-cast v1, Lr/f;

    :goto_3
    invoke-virtual {p0, v1, p2, p3, v3}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lr/o;

    if-eqz v2, :cond_3

    check-cast v1, Lr/o;

    iget-object v1, v1, Lr/o;->i:Lr/f;

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lr/m;

    iget-object p1, p1, Lr/m;->k:Lr/f;

    iget-object p1, p1, Lr/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/d;

    instance-of v1, v0, Lr/f;

    if-eqz v1, :cond_6

    check-cast v0, Lr/f;

    invoke-virtual {p0, v0, p2, p3, v3}, Lr/e;->a(Lr/f;ILjava/util/ArrayList;Lr/l;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public final f(Lq/d;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr/e;->g:Lr/b;

    .line 2
    .line 3
    iput p2, v0, Lr/b;->a:I

    .line 4
    .line 5
    iput p4, v0, Lr/b;->b:I

    .line 6
    .line 7
    iput p3, v0, Lr/b;->c:I

    .line 8
    .line 9
    iput p5, v0, Lr/b;->d:I

    .line 10
    .line 11
    iget-object p2, p0, Lr/e;->f:Landroidx/constraintlayout/widget/e;

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/e;->b(Lq/d;Lr/b;)V

    .line 14
    .line 15
    .line 16
    iget p2, v0, Lr/b;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lq/d;->P(I)V

    .line 19
    .line 20
    .line 21
    iget p2, v0, Lr/b;->f:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lq/d;->M(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, v0, Lr/b;->h:Z

    .line 27
    .line 28
    iput-boolean p2, p1, Lq/d;->E:Z

    .line 29
    .line 30
    iget p2, v0, Lr/b;->g:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lq/d;->J(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final g()V
    .locals 14

    .line 1
    iget-object v0, p0, Lr/e;->a:Lq/e;

    .line 2
    .line 3
    iget-object v0, v0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lq/d;

    .line 20
    .line 21
    iget-boolean v2, v1, Lq/d;->a:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, Lq/d;->p0:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget v8, v2, v3

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    aget v10, v2, v9

    .line 33
    .line 34
    iget v2, v1, Lq/d;->r:I

    .line 35
    .line 36
    iget v4, v1, Lq/d;->s:I

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v11, 0x3

    .line 40
    if-eq v8, v6, :cond_3

    .line 41
    .line 42
    if-ne v8, v11, :cond_2

    .line 43
    .line 44
    if-ne v2, v9, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v2, v3

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    move v2, v9

    .line 50
    :goto_2
    if-eq v10, v6, :cond_4

    .line 51
    .line 52
    if-ne v10, v11, :cond_5

    .line 53
    .line 54
    if-ne v4, v9, :cond_5

    .line 55
    .line 56
    :cond_4
    move v3, v9

    .line 57
    :cond_5
    iget-object v4, v1, Lq/d;->d:Lr/k;

    .line 58
    .line 59
    iget-object v4, v4, Lr/o;->e:Lr/g;

    .line 60
    .line 61
    iget-boolean v5, v4, Lr/f;->j:Z

    .line 62
    .line 63
    iget-object v7, v1, Lq/d;->e:Lr/m;

    .line 64
    .line 65
    iget-object v7, v7, Lr/o;->e:Lr/g;

    .line 66
    .line 67
    iget-boolean v12, v7, Lr/f;->j:Z

    .line 68
    .line 69
    const/4 v13, 0x1

    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    if-eqz v12, :cond_6

    .line 73
    .line 74
    iget v5, v4, Lr/f;->g:I

    .line 75
    .line 76
    iget v7, v7, Lr/f;->g:I

    .line 77
    .line 78
    move-object v2, p0

    .line 79
    move-object v3, v1

    .line 80
    move v4, v13

    .line 81
    move v6, v13

    .line 82
    invoke-virtual/range {v2 .. v7}, Lr/e;->f(Lq/d;IIII)V

    .line 83
    .line 84
    .line 85
    :goto_3
    iput-boolean v9, v1, Lq/d;->a:Z

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    if-eqz v5, :cond_8

    .line 89
    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    iget v5, v4, Lr/f;->g:I

    .line 93
    .line 94
    iget v7, v7, Lr/f;->g:I

    .line 95
    .line 96
    move-object v2, p0

    .line 97
    move-object v3, v1

    .line 98
    move v4, v13

    .line 99
    invoke-virtual/range {v2 .. v7}, Lr/e;->f(Lq/d;IIII)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lq/d;->e:Lr/m;

    .line 103
    .line 104
    iget-object v2, v2, Lr/o;->e:Lr/g;

    .line 105
    .line 106
    invoke-virtual {v1}, Lq/d;->l()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ne v10, v11, :cond_7

    .line 111
    .line 112
    :goto_4
    iput v3, v2, Lr/g;->m:I

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    invoke-virtual {v2, v3}, Lr/g;->d(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    if-eqz v12, :cond_9

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    iget v5, v4, Lr/f;->g:I

    .line 124
    .line 125
    iget v7, v7, Lr/f;->g:I

    .line 126
    .line 127
    move-object v2, p0

    .line 128
    move-object v3, v1

    .line 129
    move v4, v6

    .line 130
    move v6, v13

    .line 131
    invoke-virtual/range {v2 .. v7}, Lr/e;->f(Lq/d;IIII)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lq/d;->d:Lr/k;

    .line 135
    .line 136
    iget-object v2, v2, Lr/o;->e:Lr/g;

    .line 137
    .line 138
    invoke-virtual {v1}, Lq/d;->r()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-ne v8, v11, :cond_7

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    :goto_5
    iget-boolean v2, v1, Lq/d;->a:Z

    .line 146
    .line 147
    if-eqz v2, :cond_0

    .line 148
    .line 149
    iget-object v2, v1, Lq/d;->e:Lr/m;

    .line 150
    .line 151
    iget-object v2, v2, Lr/m;->l:Lr/a;

    .line 152
    .line 153
    if-eqz v2, :cond_0

    .line 154
    .line 155
    iget v1, v1, Lq/d;->a0:I

    .line 156
    .line 157
    invoke-virtual {v2, v1}, Lr/g;->d(I)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_a
    return-void
.end method
