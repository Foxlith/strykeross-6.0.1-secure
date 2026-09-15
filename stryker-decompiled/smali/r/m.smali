.class public final Lr/m;
.super Lr/o;
.source "SourceFile"


# instance fields
.field public k:Lr/f;

.field public l:Lr/a;


# virtual methods
.method public final a(Lr/d;)V
    .locals 10

    .line 1
    iget p1, p0, Lr/o;->j:I

    .line 2
    .line 3
    invoke-static {p1}, Lo/i;->c(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_e

    .line 10
    .line 11
    iget-object p1, p0, Lr/o;->e:Lr/g;

    .line 12
    .line 13
    iget-boolean v2, p1, Lr/f;->c:Z

    .line 14
    .line 15
    const/high16 v3, 0x3f000000    # 0.5f

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    iget-boolean v2, p1, Lr/f;->j:Z

    .line 21
    .line 22
    if-nez v2, :cond_5

    .line 23
    .line 24
    iget v2, p0, Lr/o;->d:I

    .line 25
    .line 26
    if-ne v2, v1, :cond_5

    .line 27
    .line 28
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 29
    .line 30
    iget v5, v2, Lq/d;->s:I

    .line 31
    .line 32
    const/4 v6, 0x2

    .line 33
    if-eq v5, v6, :cond_4

    .line 34
    .line 35
    if-eq v5, v1, :cond_0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_0
    iget-object v5, v2, Lq/d;->d:Lr/k;

    .line 39
    .line 40
    iget-object v5, v5, Lr/o;->e:Lr/g;

    .line 41
    .line 42
    iget-boolean v6, v5, Lr/f;->j:Z

    .line 43
    .line 44
    if-eqz v6, :cond_5

    .line 45
    .line 46
    iget v6, v2, Lq/d;->X:I

    .line 47
    .line 48
    const/4 v7, -0x1

    .line 49
    if-eq v6, v7, :cond_3

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    if-eq v6, v0, :cond_1

    .line 54
    .line 55
    move v2, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget v5, v5, Lr/f;->g:I

    .line 58
    .line 59
    int-to-float v5, v5

    .line 60
    :goto_0
    iget v2, v2, Lq/d;->W:F

    .line 61
    .line 62
    div-float/2addr v5, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget v5, v5, Lr/f;->g:I

    .line 65
    .line 66
    int-to-float v5, v5

    .line 67
    iget v2, v2, Lq/d;->W:F

    .line 68
    .line 69
    mul-float/2addr v5, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget v5, v5, Lr/f;->g:I

    .line 72
    .line 73
    int-to-float v5, v5

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    invoke-virtual {p1, v2}, Lr/g;->d(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    iget-object v5, v2, Lq/d;->T:Lq/d;

    .line 80
    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    iget-object v5, v5, Lq/d;->e:Lr/m;

    .line 84
    .line 85
    iget-object v5, v5, Lr/o;->e:Lr/g;

    .line 86
    .line 87
    iget-boolean v6, v5, Lr/f;->j:Z

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    iget v2, v2, Lq/d;->z:F

    .line 92
    .line 93
    iget v5, v5, Lr/f;->g:I

    .line 94
    .line 95
    int-to-float v5, v5

    .line 96
    mul-float/2addr v5, v2

    .line 97
    :goto_2
    add-float/2addr v5, v3

    .line 98
    float-to-int v2, v5

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    :goto_3
    iget-object v2, p0, Lr/o;->h:Lr/f;

    .line 101
    .line 102
    iget-boolean v5, v2, Lr/f;->c:Z

    .line 103
    .line 104
    if-eqz v5, :cond_d

    .line 105
    .line 106
    iget-object v5, p0, Lr/o;->i:Lr/f;

    .line 107
    .line 108
    iget-boolean v6, v5, Lr/f;->c:Z

    .line 109
    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_6
    iget-boolean v6, v2, Lr/f;->j:Z

    .line 115
    .line 116
    if-eqz v6, :cond_7

    .line 117
    .line 118
    iget-boolean v6, v5, Lr/f;->j:Z

    .line 119
    .line 120
    if-eqz v6, :cond_7

    .line 121
    .line 122
    iget-boolean v6, p1, Lr/f;->j:Z

    .line 123
    .line 124
    if-eqz v6, :cond_7

    .line 125
    .line 126
    return-void

    .line 127
    :cond_7
    iget-boolean v6, p1, Lr/f;->j:Z

    .line 128
    .line 129
    if-nez v6, :cond_8

    .line 130
    .line 131
    iget v6, p0, Lr/o;->d:I

    .line 132
    .line 133
    if-ne v6, v1, :cond_8

    .line 134
    .line 135
    iget-object v6, p0, Lr/o;->b:Lq/d;

    .line 136
    .line 137
    iget v7, v6, Lq/d;->r:I

    .line 138
    .line 139
    if-nez v7, :cond_8

    .line 140
    .line 141
    invoke-virtual {v6}, Lq/d;->z()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-nez v6, :cond_8

    .line 146
    .line 147
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lr/f;

    .line 154
    .line 155
    iget-object v1, v5, Lr/f;->l:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Lr/f;

    .line 162
    .line 163
    iget v0, v0, Lr/f;->g:I

    .line 164
    .line 165
    iget v3, v2, Lr/f;->f:I

    .line 166
    .line 167
    add-int/2addr v0, v3

    .line 168
    iget v1, v1, Lr/f;->g:I

    .line 169
    .line 170
    iget v3, v5, Lr/f;->f:I

    .line 171
    .line 172
    add-int/2addr v1, v3

    .line 173
    sub-int v3, v1, v0

    .line 174
    .line 175
    invoke-virtual {v2, v0}, Lr/f;->d(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v1}, Lr/f;->d(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v3}, Lr/g;->d(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_8
    iget-boolean v6, p1, Lr/f;->j:Z

    .line 186
    .line 187
    if-nez v6, :cond_a

    .line 188
    .line 189
    iget v6, p0, Lr/o;->d:I

    .line 190
    .line 191
    if-ne v6, v1, :cond_a

    .line 192
    .line 193
    iget v1, p0, Lr/o;->a:I

    .line 194
    .line 195
    if-ne v1, v0, :cond_a

    .line 196
    .line 197
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-lez v0, :cond_a

    .line 204
    .line 205
    iget-object v0, v5, Lr/f;->l:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-lez v0, :cond_a

    .line 212
    .line 213
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lr/f;

    .line 220
    .line 221
    iget-object v1, v5, Lr/f;->l:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lr/f;

    .line 228
    .line 229
    iget v0, v0, Lr/f;->g:I

    .line 230
    .line 231
    iget v6, v2, Lr/f;->f:I

    .line 232
    .line 233
    add-int/2addr v0, v6

    .line 234
    iget v1, v1, Lr/f;->g:I

    .line 235
    .line 236
    iget v6, v5, Lr/f;->f:I

    .line 237
    .line 238
    add-int/2addr v1, v6

    .line 239
    sub-int/2addr v1, v0

    .line 240
    iget v0, p1, Lr/g;->m:I

    .line 241
    .line 242
    if-ge v1, v0, :cond_9

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Lr/g;->d(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_9
    invoke-virtual {p1, v0}, Lr/g;->d(I)V

    .line 249
    .line 250
    .line 251
    :cond_a
    :goto_4
    iget-boolean v0, p1, Lr/f;->j:Z

    .line 252
    .line 253
    if-nez v0, :cond_b

    .line 254
    .line 255
    return-void

    .line 256
    :cond_b
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-lez v0, :cond_d

    .line 263
    .line 264
    iget-object v0, v5, Lr/f;->l:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-lez v0, :cond_d

    .line 271
    .line 272
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lr/f;

    .line 279
    .line 280
    iget-object v1, v5, Lr/f;->l:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Lr/f;

    .line 287
    .line 288
    iget v4, v0, Lr/f;->g:I

    .line 289
    .line 290
    iget v6, v2, Lr/f;->f:I

    .line 291
    .line 292
    add-int/2addr v6, v4

    .line 293
    iget v7, v1, Lr/f;->g:I

    .line 294
    .line 295
    iget v8, v5, Lr/f;->f:I

    .line 296
    .line 297
    add-int/2addr v8, v7

    .line 298
    iget-object v9, p0, Lr/o;->b:Lq/d;

    .line 299
    .line 300
    iget v9, v9, Lq/d;->e0:F

    .line 301
    .line 302
    if-ne v0, v1, :cond_c

    .line 303
    .line 304
    move v9, v3

    .line 305
    goto :goto_5

    .line 306
    :cond_c
    move v4, v6

    .line 307
    move v7, v8

    .line 308
    :goto_5
    sub-int/2addr v7, v4

    .line 309
    iget v0, p1, Lr/f;->g:I

    .line 310
    .line 311
    sub-int/2addr v7, v0

    .line 312
    int-to-float v0, v4

    .line 313
    add-float/2addr v0, v3

    .line 314
    int-to-float v1, v7

    .line 315
    mul-float/2addr v1, v9

    .line 316
    add-float/2addr v1, v0

    .line 317
    float-to-int v0, v1

    .line 318
    invoke-virtual {v2, v0}, Lr/f;->d(I)V

    .line 319
    .line 320
    .line 321
    iget v0, v2, Lr/f;->g:I

    .line 322
    .line 323
    iget p1, p1, Lr/f;->g:I

    .line 324
    .line 325
    add-int/2addr v0, p1

    .line 326
    invoke-virtual {v5, v0}, Lr/f;->d(I)V

    .line 327
    .line 328
    .line 329
    :cond_d
    :goto_6
    return-void

    .line 330
    :cond_e
    iget-object p1, p0, Lr/o;->b:Lq/d;

    .line 331
    .line 332
    iget-object v1, p1, Lq/d;->J:Lq/c;

    .line 333
    .line 334
    iget-object p1, p1, Lq/d;->L:Lq/c;

    .line 335
    .line 336
    invoke-virtual {p0, v1, p1, v0}, Lr/o;->l(Lq/c;Lq/c;I)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method public final d()V
    .locals 14

    .line 1
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lq/d;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Lr/o;->e:Lr/g;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lq/d;->l()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Lr/f;->j:Z

    .line 17
    .line 18
    iget-object v1, p0, Lr/o;->i:Lr/f;

    .line 19
    .line 20
    iget-object v3, p0, Lr/o;->h:Lr/f;

    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x4

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 28
    .line 29
    iget-object v7, v0, Lq/d;->p0:[I

    .line 30
    .line 31
    aget v7, v7, v5

    .line 32
    .line 33
    iput v7, p0, Lr/o;->d:I

    .line 34
    .line 35
    iget-boolean v0, v0, Lq/d;->E:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Lr/a;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lr/g;-><init>(Lr/o;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lr/m;->l:Lr/a;

    .line 45
    .line 46
    :cond_1
    iget v0, p0, Lr/o;->d:I

    .line 47
    .line 48
    if-eq v0, v4, :cond_4

    .line 49
    .line 50
    if-ne v0, v6, :cond_2

    .line 51
    .line 52
    iget-object v7, p0, Lr/o;->b:Lq/d;

    .line 53
    .line 54
    iget-object v7, v7, Lq/d;->T:Lq/d;

    .line 55
    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    iget-object v8, v7, Lq/d;->p0:[I

    .line 59
    .line 60
    aget v8, v8, v5

    .line 61
    .line 62
    if-ne v8, v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7}, Lq/d;->l()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 69
    .line 70
    iget-object v4, v4, Lq/d;->J:Lq/c;

    .line 71
    .line 72
    invoke-virtual {v4}, Lq/c;->e()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    sub-int/2addr v0, v4

    .line 77
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 78
    .line 79
    iget-object v4, v4, Lq/d;->L:Lq/c;

    .line 80
    .line 81
    invoke-virtual {v4}, Lq/c;->e()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    sub-int/2addr v0, v4

    .line 86
    iget-object v4, v7, Lq/d;->e:Lr/m;

    .line 87
    .line 88
    iget-object v4, v4, Lr/o;->h:Lr/f;

    .line 89
    .line 90
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 91
    .line 92
    iget-object v5, v5, Lq/d;->J:Lq/c;

    .line 93
    .line 94
    invoke-virtual {v5}, Lq/c;->e()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-static {v3, v4, v5}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v7, Lq/d;->e:Lr/m;

    .line 102
    .line 103
    iget-object v3, v3, Lr/o;->i:Lr/f;

    .line 104
    .line 105
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 106
    .line 107
    iget-object v4, v4, Lq/d;->L:Lq/c;

    .line 108
    .line 109
    invoke-virtual {v4}, Lq/c;->e()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    neg-int v4, v4

    .line 114
    invoke-static {v1, v3, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    if-ne v0, v5, :cond_4

    .line 122
    .line 123
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 124
    .line 125
    invoke-virtual {v0}, Lq/d;->l()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    iget v0, p0, Lr/o;->d:I

    .line 134
    .line 135
    if-ne v0, v6, :cond_4

    .line 136
    .line 137
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 138
    .line 139
    iget-object v7, v0, Lq/d;->T:Lq/d;

    .line 140
    .line 141
    if-eqz v7, :cond_4

    .line 142
    .line 143
    iget-object v8, v7, Lq/d;->p0:[I

    .line 144
    .line 145
    aget v8, v8, v5

    .line 146
    .line 147
    if-ne v8, v5, :cond_4

    .line 148
    .line 149
    iget-object v2, v7, Lq/d;->e:Lr/m;

    .line 150
    .line 151
    iget-object v2, v2, Lr/o;->h:Lr/f;

    .line 152
    .line 153
    iget-object v0, v0, Lq/d;->J:Lq/c;

    .line 154
    .line 155
    invoke-virtual {v0}, Lq/c;->e()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v3, v2, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v7, Lq/d;->e:Lr/m;

    .line 163
    .line 164
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 165
    .line 166
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 167
    .line 168
    iget-object v2, v2, Lq/d;->L:Lq/c;

    .line 169
    .line 170
    invoke-virtual {v2}, Lq/c;->e()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    neg-int v2, v2

    .line 175
    invoke-static {v1, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_4
    :goto_0
    iget-boolean v0, v2, Lr/f;->j:Z

    .line 180
    .line 181
    iget-object v7, p0, Lr/m;->k:Lr/f;

    .line 182
    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v9, 0x2

    .line 185
    if-eqz v0, :cond_d

    .line 186
    .line 187
    iget-object v10, p0, Lr/o;->b:Lq/d;

    .line 188
    .line 189
    iget-boolean v11, v10, Lq/d;->a:Z

    .line 190
    .line 191
    if-eqz v11, :cond_d

    .line 192
    .line 193
    iget-object v0, v10, Lq/d;->Q:[Lq/c;

    .line 194
    .line 195
    aget-object v11, v0, v9

    .line 196
    .line 197
    iget-object v12, v11, Lq/c;->f:Lq/c;

    .line 198
    .line 199
    if-eqz v12, :cond_8

    .line 200
    .line 201
    aget-object v13, v0, v4

    .line 202
    .line 203
    iget-object v13, v13, Lq/c;->f:Lq/c;

    .line 204
    .line 205
    if-eqz v13, :cond_8

    .line 206
    .line 207
    invoke-virtual {v10}, Lq/d;->z()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 214
    .line 215
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 216
    .line 217
    aget-object v0, v0, v9

    .line 218
    .line 219
    invoke-virtual {v0}, Lq/c;->e()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iput v0, v3, Lr/f;->f:I

    .line 224
    .line 225
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 226
    .line 227
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 228
    .line 229
    aget-object v0, v0, v4

    .line 230
    .line 231
    invoke-virtual {v0}, Lq/c;->e()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    neg-int v0, v0

    .line 236
    iput v0, v1, Lr/f;->f:I

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_5
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 240
    .line 241
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 242
    .line 243
    aget-object v0, v0, v9

    .line 244
    .line 245
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 252
    .line 253
    iget-object v2, v2, Lq/d;->Q:[Lq/c;

    .line 254
    .line 255
    aget-object v2, v2, v9

    .line 256
    .line 257
    invoke-virtual {v2}, Lq/c;->e()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-static {v3, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 262
    .line 263
    .line 264
    :cond_6
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 265
    .line 266
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 267
    .line 268
    aget-object v0, v0, v4

    .line 269
    .line 270
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_7

    .line 275
    .line 276
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 277
    .line 278
    iget-object v2, v2, Lq/d;->Q:[Lq/c;

    .line 279
    .line 280
    aget-object v2, v2, v4

    .line 281
    .line 282
    invoke-virtual {v2}, Lq/c;->e()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    neg-int v2, v2

    .line 287
    invoke-static {v1, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 288
    .line 289
    .line 290
    :cond_7
    iput-boolean v5, v3, Lr/f;->b:Z

    .line 291
    .line 292
    iput-boolean v5, v1, Lr/f;->b:Z

    .line 293
    .line 294
    :goto_1
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 295
    .line 296
    iget-boolean v1, v0, Lq/d;->E:Z

    .line 297
    .line 298
    if-eqz v1, :cond_1e

    .line 299
    .line 300
    :goto_2
    iget v0, v0, Lq/d;->a0:I

    .line 301
    .line 302
    invoke-static {v7, v3, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_8
    if-eqz v12, :cond_9

    .line 308
    .line 309
    invoke-static {v11}, Lr/o;->h(Lq/c;)Lr/f;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-eqz v0, :cond_1e

    .line 314
    .line 315
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 316
    .line 317
    iget-object v4, v4, Lq/d;->Q:[Lq/c;

    .line 318
    .line 319
    aget-object v4, v4, v9

    .line 320
    .line 321
    invoke-virtual {v4}, Lq/c;->e()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-static {v3, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 326
    .line 327
    .line 328
    iget v0, v2, Lr/f;->g:I

    .line 329
    .line 330
    invoke-static {v1, v3, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 334
    .line 335
    iget-boolean v1, v0, Lq/d;->E:Z

    .line 336
    .line 337
    if-eqz v1, :cond_1e

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_9
    aget-object v5, v0, v4

    .line 341
    .line 342
    iget-object v9, v5, Lq/c;->f:Lq/c;

    .line 343
    .line 344
    if-eqz v9, :cond_b

    .line 345
    .line 346
    invoke-static {v5}, Lr/o;->h(Lq/c;)Lr/f;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v0, :cond_a

    .line 351
    .line 352
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 353
    .line 354
    iget-object v5, v5, Lq/d;->Q:[Lq/c;

    .line 355
    .line 356
    aget-object v4, v5, v4

    .line 357
    .line 358
    invoke-virtual {v4}, Lq/c;->e()I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    neg-int v4, v4

    .line 363
    invoke-static {v1, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 364
    .line 365
    .line 366
    iget v0, v2, Lr/f;->g:I

    .line 367
    .line 368
    neg-int v0, v0

    .line 369
    invoke-static {v3, v1, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 370
    .line 371
    .line 372
    :cond_a
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 373
    .line 374
    iget-boolean v1, v0, Lq/d;->E:Z

    .line 375
    .line 376
    if-eqz v1, :cond_1e

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_b
    aget-object v0, v0, v6

    .line 380
    .line 381
    iget-object v4, v0, Lq/c;->f:Lq/c;

    .line 382
    .line 383
    if-eqz v4, :cond_c

    .line 384
    .line 385
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    if-eqz v0, :cond_1e

    .line 390
    .line 391
    invoke-static {v7, v0, v8}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 395
    .line 396
    iget v0, v0, Lq/d;->a0:I

    .line 397
    .line 398
    neg-int v0, v0

    .line 399
    invoke-static {v3, v7, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 400
    .line 401
    .line 402
    iget v0, v2, Lr/f;->g:I

    .line 403
    .line 404
    invoke-static {v1, v3, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_9

    .line 408
    .line 409
    :cond_c
    instance-of v0, v10, Lq/i;

    .line 410
    .line 411
    if-nez v0, :cond_1e

    .line 412
    .line 413
    iget-object v0, v10, Lq/d;->T:Lq/d;

    .line 414
    .line 415
    if-eqz v0, :cond_1e

    .line 416
    .line 417
    const/4 v0, 0x7

    .line 418
    invoke-virtual {v10, v0}, Lq/d;->j(I)Lq/c;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v0, v0, Lq/c;->f:Lq/c;

    .line 423
    .line 424
    if-nez v0, :cond_1e

    .line 425
    .line 426
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 427
    .line 428
    iget-object v4, v0, Lq/d;->T:Lq/d;

    .line 429
    .line 430
    iget-object v4, v4, Lq/d;->e:Lr/m;

    .line 431
    .line 432
    iget-object v4, v4, Lr/o;->h:Lr/f;

    .line 433
    .line 434
    invoke-virtual {v0}, Lq/d;->t()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-static {v3, v4, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 439
    .line 440
    .line 441
    iget v0, v2, Lr/f;->g:I

    .line 442
    .line 443
    invoke-static {v1, v3, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 447
    .line 448
    iget-boolean v1, v0, Lq/d;->E:Z

    .line 449
    .line 450
    if-eqz v1, :cond_1e

    .line 451
    .line 452
    goto/16 :goto_2

    .line 453
    .line 454
    :cond_d
    if-nez v0, :cond_12

    .line 455
    .line 456
    iget v0, p0, Lr/o;->d:I

    .line 457
    .line 458
    if-ne v0, v4, :cond_12

    .line 459
    .line 460
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 461
    .line 462
    iget v10, v0, Lq/d;->s:I

    .line 463
    .line 464
    if-eq v10, v9, :cond_10

    .line 465
    .line 466
    if-eq v10, v4, :cond_e

    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_e
    invoke-virtual {v0}, Lq/d;->z()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_13

    .line 474
    .line 475
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 476
    .line 477
    iget v10, v0, Lq/d;->r:I

    .line 478
    .line 479
    if-ne v10, v4, :cond_f

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_f
    iget-object v0, v0, Lq/d;->d:Lr/k;

    .line 483
    .line 484
    :goto_3
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 485
    .line 486
    iget-object v10, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    iput-boolean v5, v2, Lr/f;->b:Z

    .line 497
    .line 498
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    goto :goto_4

    .line 509
    :cond_10
    iget-object v0, v0, Lq/d;->T:Lq/d;

    .line 510
    .line 511
    if-nez v0, :cond_11

    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_11
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_12
    invoke-virtual {v2, p0}, Lr/f;->b(Lr/d;)V

    .line 518
    .line 519
    .line 520
    :cond_13
    :goto_4
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 521
    .line 522
    iget-object v10, v0, Lq/d;->Q:[Lq/c;

    .line 523
    .line 524
    aget-object v11, v10, v9

    .line 525
    .line 526
    iget-object v12, v11, Lq/c;->f:Lq/c;

    .line 527
    .line 528
    if-eqz v12, :cond_17

    .line 529
    .line 530
    aget-object v13, v10, v4

    .line 531
    .line 532
    iget-object v13, v13, Lq/c;->f:Lq/c;

    .line 533
    .line 534
    if-eqz v13, :cond_17

    .line 535
    .line 536
    invoke-virtual {v0}, Lq/d;->z()Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_14

    .line 541
    .line 542
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 543
    .line 544
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 545
    .line 546
    aget-object v0, v0, v9

    .line 547
    .line 548
    invoke-virtual {v0}, Lq/c;->e()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    iput v0, v3, Lr/f;->f:I

    .line 553
    .line 554
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 555
    .line 556
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 557
    .line 558
    aget-object v0, v0, v4

    .line 559
    .line 560
    invoke-virtual {v0}, Lq/c;->e()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    neg-int v0, v0

    .line 565
    iput v0, v1, Lr/f;->f:I

    .line 566
    .line 567
    goto :goto_5

    .line 568
    :cond_14
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 569
    .line 570
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 571
    .line 572
    aget-object v0, v0, v9

    .line 573
    .line 574
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 579
    .line 580
    iget-object v1, v1, Lq/d;->Q:[Lq/c;

    .line 581
    .line 582
    aget-object v1, v1, v4

    .line 583
    .line 584
    invoke-static {v1}, Lr/o;->h(Lq/c;)Lr/f;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    if-eqz v0, :cond_15

    .line 589
    .line 590
    invoke-virtual {v0, p0}, Lr/f;->b(Lr/d;)V

    .line 591
    .line 592
    .line 593
    :cond_15
    if-eqz v1, :cond_16

    .line 594
    .line 595
    invoke-virtual {v1, p0}, Lr/f;->b(Lr/d;)V

    .line 596
    .line 597
    .line 598
    :cond_16
    iput v6, p0, Lr/o;->j:I

    .line 599
    .line 600
    :goto_5
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 601
    .line 602
    iget-boolean v0, v0, Lq/d;->E:Z

    .line 603
    .line 604
    if-eqz v0, :cond_1d

    .line 605
    .line 606
    :goto_6
    iget-object v0, p0, Lr/m;->l:Lr/a;

    .line 607
    .line 608
    invoke-virtual {p0, v7, v3, v5, v0}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_8

    .line 612
    .line 613
    :cond_17
    const/4 v13, 0x0

    .line 614
    if-eqz v12, :cond_19

    .line 615
    .line 616
    invoke-static {v11}, Lr/o;->h(Lq/c;)Lr/f;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-eqz v0, :cond_1d

    .line 621
    .line 622
    iget-object v6, p0, Lr/o;->b:Lq/d;

    .line 623
    .line 624
    iget-object v6, v6, Lq/d;->Q:[Lq/c;

    .line 625
    .line 626
    aget-object v6, v6, v9

    .line 627
    .line 628
    invoke-virtual {v6}, Lq/c;->e()I

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    invoke-static {v3, v0, v6}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {p0, v1, v3, v5, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 636
    .line 637
    .line 638
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 639
    .line 640
    iget-boolean v0, v0, Lq/d;->E:Z

    .line 641
    .line 642
    if-eqz v0, :cond_18

    .line 643
    .line 644
    iget-object v0, p0, Lr/m;->l:Lr/a;

    .line 645
    .line 646
    invoke-virtual {p0, v7, v3, v5, v0}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 647
    .line 648
    .line 649
    :cond_18
    iget v0, p0, Lr/o;->d:I

    .line 650
    .line 651
    if-ne v0, v4, :cond_1d

    .line 652
    .line 653
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 654
    .line 655
    iget v1, v0, Lq/d;->W:F

    .line 656
    .line 657
    cmpl-float v1, v1, v13

    .line 658
    .line 659
    if-lez v1, :cond_1d

    .line 660
    .line 661
    iget-object v0, v0, Lq/d;->d:Lr/k;

    .line 662
    .line 663
    iget v1, v0, Lr/o;->d:I

    .line 664
    .line 665
    if-ne v1, v4, :cond_1d

    .line 666
    .line 667
    goto/16 :goto_7

    .line 668
    .line 669
    :cond_19
    aget-object v9, v10, v4

    .line 670
    .line 671
    iget-object v11, v9, Lq/c;->f:Lq/c;

    .line 672
    .line 673
    const/4 v12, -0x1

    .line 674
    if-eqz v11, :cond_1a

    .line 675
    .line 676
    invoke-static {v9}, Lr/o;->h(Lq/c;)Lr/f;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    if-eqz v0, :cond_1d

    .line 681
    .line 682
    iget-object v6, p0, Lr/o;->b:Lq/d;

    .line 683
    .line 684
    iget-object v6, v6, Lq/d;->Q:[Lq/c;

    .line 685
    .line 686
    aget-object v4, v6, v4

    .line 687
    .line 688
    invoke-virtual {v4}, Lq/c;->e()I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    neg-int v4, v4

    .line 693
    invoke-static {v1, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p0, v3, v1, v12, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 697
    .line 698
    .line 699
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 700
    .line 701
    iget-boolean v0, v0, Lq/d;->E:Z

    .line 702
    .line 703
    if-eqz v0, :cond_1d

    .line 704
    .line 705
    goto :goto_6

    .line 706
    :cond_1a
    aget-object v6, v10, v6

    .line 707
    .line 708
    iget-object v9, v6, Lq/c;->f:Lq/c;

    .line 709
    .line 710
    if-eqz v9, :cond_1b

    .line 711
    .line 712
    invoke-static {v6}, Lr/o;->h(Lq/c;)Lr/f;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    if-eqz v0, :cond_1d

    .line 717
    .line 718
    invoke-static {v7, v0, v8}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 719
    .line 720
    .line 721
    iget-object v0, p0, Lr/m;->l:Lr/a;

    .line 722
    .line 723
    invoke-virtual {p0, v3, v7, v12, v0}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p0, v1, v3, v5, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 727
    .line 728
    .line 729
    goto :goto_8

    .line 730
    :cond_1b
    instance-of v6, v0, Lq/i;

    .line 731
    .line 732
    if-nez v6, :cond_1d

    .line 733
    .line 734
    iget-object v6, v0, Lq/d;->T:Lq/d;

    .line 735
    .line 736
    if-eqz v6, :cond_1d

    .line 737
    .line 738
    iget-object v6, v6, Lq/d;->e:Lr/m;

    .line 739
    .line 740
    iget-object v6, v6, Lr/o;->h:Lr/f;

    .line 741
    .line 742
    invoke-virtual {v0}, Lq/d;->t()I

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    invoke-static {v3, v6, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p0, v1, v3, v5, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 750
    .line 751
    .line 752
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 753
    .line 754
    iget-boolean v0, v0, Lq/d;->E:Z

    .line 755
    .line 756
    if-eqz v0, :cond_1c

    .line 757
    .line 758
    iget-object v0, p0, Lr/m;->l:Lr/a;

    .line 759
    .line 760
    invoke-virtual {p0, v7, v3, v5, v0}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 761
    .line 762
    .line 763
    :cond_1c
    iget v0, p0, Lr/o;->d:I

    .line 764
    .line 765
    if-ne v0, v4, :cond_1d

    .line 766
    .line 767
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 768
    .line 769
    iget v1, v0, Lq/d;->W:F

    .line 770
    .line 771
    cmpl-float v1, v1, v13

    .line 772
    .line 773
    if-lez v1, :cond_1d

    .line 774
    .line 775
    iget-object v0, v0, Lq/d;->d:Lr/k;

    .line 776
    .line 777
    iget v1, v0, Lr/o;->d:I

    .line 778
    .line 779
    if-ne v1, v4, :cond_1d

    .line 780
    .line 781
    :goto_7
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 782
    .line 783
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 789
    .line 790
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 791
    .line 792
    iget-object v1, v1, Lq/d;->d:Lr/k;

    .line 793
    .line 794
    iget-object v1, v1, Lr/o;->e:Lr/g;

    .line 795
    .line 796
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    iput-object p0, v2, Lr/f;->a:Lr/o;

    .line 800
    .line 801
    :cond_1d
    :goto_8
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-nez v0, :cond_1e

    .line 808
    .line 809
    iput-boolean v5, v2, Lr/f;->c:Z

    .line 810
    .line 811
    :cond_1e
    :goto_9
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr/o;->h:Lr/f;

    .line 2
    .line 3
    iget-boolean v1, v0, Lr/f;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 8
    .line 9
    iget v0, v0, Lr/f;->g:I

    .line 10
    .line 11
    iput v0, v1, Lq/d;->Z:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lr/o;->c:Lr/l;

    iget-object v0, p0, Lr/o;->h:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    iget-object v0, p0, Lr/o;->i:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    iget-object v0, p0, Lr/m;->k:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    iget-object v0, p0, Lr/o;->e:Lr/g;

    invoke-virtual {v0}, Lr/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    .line 1
    iget v0, p0, Lr/o;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lr/o;->b:Lq/d;

    iget v0, v0, Lq/d;->s:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final m()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o;->g:Z

    iget-object v1, p0, Lr/o;->h:Lr/f;

    invoke-virtual {v1}, Lr/f;->c()V

    iput-boolean v0, v1, Lr/f;->j:Z

    iget-object v1, p0, Lr/o;->i:Lr/f;

    invoke-virtual {v1}, Lr/f;->c()V

    iput-boolean v0, v1, Lr/f;->j:Z

    iget-object v1, p0, Lr/m;->k:Lr/f;

    invoke-virtual {v1}, Lr/f;->c()V

    iput-boolean v0, v1, Lr/f;->j:Z

    iget-object v1, p0, Lr/o;->e:Lr/g;

    iput-boolean v0, v1, Lr/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VerticalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 9
    .line 10
    iget-object v1, v1, Lq/d;->h0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
