.class public Lq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:F

.field public final C:[I

.field public D:F

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public final I:Lq/c;

.field public final J:Lq/c;

.field public final K:Lq/c;

.field public final L:Lq/c;

.field public final M:Lq/c;

.field public final N:Lq/c;

.field public final O:Lq/c;

.field public final P:Lq/c;

.field public final Q:[Lq/c;

.field public final R:Ljava/util/ArrayList;

.field public final S:[Z

.field public T:Lq/d;

.field public U:I

.field public V:I

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lr/c;

.field public b0:I

.field public c:Lr/c;

.field public c0:I

.field public d:Lr/k;

.field public d0:F

.field public e:Lr/m;

.field public e0:F

.field public final f:[Z

.field public f0:Ljava/lang/Object;

.field public g:Z

.field public g0:I

.field public h:I

.field public h0:Ljava/lang/String;

.field public i:I

.field public i0:I

.field public j:Ljava/lang/String;

.field public j0:I

.field public k:Z

.field public final k0:[F

.field public l:Z

.field public final l0:[Lq/d;

.field public m:Z

.field public final m0:[Lq/d;

.field public n:Z

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public final p0:[I

.field public q:I

.field public r:I

.field public s:I

.field public final t:[I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lq/d;->a:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lq/d;->d:Lr/k;

    .line 11
    .line 12
    iput-object v2, v0, Lq/d;->e:Lr/m;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    new-array v4, v3, [Z

    .line 16
    .line 17
    fill-array-data v4, :array_0

    .line 18
    .line 19
    .line 20
    iput-object v4, v0, Lq/d;->f:[Z

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    iput-boolean v4, v0, Lq/d;->g:Z

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    iput v5, v0, Lq/d;->h:I

    .line 27
    .line 28
    iput v5, v0, Lq/d;->i:I

    .line 29
    .line 30
    new-instance v6, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-boolean v1, v0, Lq/d;->k:Z

    .line 36
    .line 37
    iput-boolean v1, v0, Lq/d;->l:Z

    .line 38
    .line 39
    iput-boolean v1, v0, Lq/d;->m:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Lq/d;->n:Z

    .line 42
    .line 43
    iput v5, v0, Lq/d;->o:I

    .line 44
    .line 45
    iput v5, v0, Lq/d;->p:I

    .line 46
    .line 47
    iput v1, v0, Lq/d;->q:I

    .line 48
    .line 49
    iput v1, v0, Lq/d;->r:I

    .line 50
    .line 51
    iput v1, v0, Lq/d;->s:I

    .line 52
    .line 53
    new-array v6, v3, [I

    .line 54
    .line 55
    iput-object v6, v0, Lq/d;->t:[I

    .line 56
    .line 57
    iput v1, v0, Lq/d;->u:I

    .line 58
    .line 59
    iput v1, v0, Lq/d;->v:I

    .line 60
    .line 61
    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    .line 63
    iput v6, v0, Lq/d;->w:F

    .line 64
    .line 65
    iput v1, v0, Lq/d;->x:I

    .line 66
    .line 67
    iput v1, v0, Lq/d;->y:I

    .line 68
    .line 69
    iput v6, v0, Lq/d;->z:F

    .line 70
    .line 71
    iput v5, v0, Lq/d;->A:I

    .line 72
    .line 73
    iput v6, v0, Lq/d;->B:F

    .line 74
    .line 75
    const v6, 0x7fffffff

    .line 76
    .line 77
    .line 78
    filled-new-array {v6, v6}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iput-object v6, v0, Lq/d;->C:[I

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    iput v6, v0, Lq/d;->D:F

    .line 86
    .line 87
    iput-boolean v1, v0, Lq/d;->E:Z

    .line 88
    .line 89
    iput-boolean v1, v0, Lq/d;->F:Z

    .line 90
    .line 91
    iput v1, v0, Lq/d;->G:I

    .line 92
    .line 93
    iput v1, v0, Lq/d;->H:I

    .line 94
    .line 95
    new-instance v13, Lq/c;

    .line 96
    .line 97
    invoke-direct {v13, v0, v3}, Lq/c;-><init>(Lq/d;I)V

    .line 98
    .line 99
    .line 100
    iput-object v13, v0, Lq/d;->I:Lq/c;

    .line 101
    .line 102
    new-instance v14, Lq/c;

    .line 103
    .line 104
    const/4 v7, 0x3

    .line 105
    invoke-direct {v14, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 106
    .line 107
    .line 108
    iput-object v14, v0, Lq/d;->J:Lq/c;

    .line 109
    .line 110
    new-instance v15, Lq/c;

    .line 111
    .line 112
    const/4 v7, 0x4

    .line 113
    invoke-direct {v15, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 114
    .line 115
    .line 116
    iput-object v15, v0, Lq/d;->K:Lq/c;

    .line 117
    .line 118
    new-instance v12, Lq/c;

    .line 119
    .line 120
    const/4 v7, 0x5

    .line 121
    invoke-direct {v12, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 122
    .line 123
    .line 124
    iput-object v12, v0, Lq/d;->L:Lq/c;

    .line 125
    .line 126
    new-instance v11, Lq/c;

    .line 127
    .line 128
    const/4 v7, 0x6

    .line 129
    invoke-direct {v11, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 130
    .line 131
    .line 132
    iput-object v11, v0, Lq/d;->M:Lq/c;

    .line 133
    .line 134
    new-instance v10, Lq/c;

    .line 135
    .line 136
    const/16 v7, 0x8

    .line 137
    .line 138
    invoke-direct {v10, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 139
    .line 140
    .line 141
    iput-object v10, v0, Lq/d;->N:Lq/c;

    .line 142
    .line 143
    new-instance v9, Lq/c;

    .line 144
    .line 145
    const/16 v7, 0x9

    .line 146
    .line 147
    invoke-direct {v9, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 148
    .line 149
    .line 150
    iput-object v9, v0, Lq/d;->O:Lq/c;

    .line 151
    .line 152
    new-instance v8, Lq/c;

    .line 153
    .line 154
    const/4 v7, 0x7

    .line 155
    invoke-direct {v8, v0, v7}, Lq/c;-><init>(Lq/d;I)V

    .line 156
    .line 157
    .line 158
    iput-object v8, v0, Lq/d;->P:Lq/c;

    .line 159
    .line 160
    move-object v7, v13

    .line 161
    move-object/from16 v16, v8

    .line 162
    .line 163
    move-object v8, v15

    .line 164
    move-object/from16 v17, v9

    .line 165
    .line 166
    move-object v9, v14

    .line 167
    move-object/from16 v18, v10

    .line 168
    .line 169
    move-object v10, v12

    .line 170
    move-object/from16 v19, v11

    .line 171
    .line 172
    move-object/from16 v20, v12

    .line 173
    .line 174
    move-object/from16 v12, v16

    .line 175
    .line 176
    filled-new-array/range {v7 .. v12}, [Lq/c;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    iput-object v7, v0, Lq/d;->Q:[Lq/c;

    .line 181
    .line 182
    new-instance v7, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v7, v0, Lq/d;->R:Ljava/util/ArrayList;

    .line 188
    .line 189
    new-array v8, v3, [Z

    .line 190
    .line 191
    iput-object v8, v0, Lq/d;->S:[Z

    .line 192
    .line 193
    filled-new-array {v4, v4}, [I

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    iput-object v8, v0, Lq/d;->p0:[I

    .line 198
    .line 199
    iput-object v2, v0, Lq/d;->T:Lq/d;

    .line 200
    .line 201
    iput v1, v0, Lq/d;->U:I

    .line 202
    .line 203
    iput v1, v0, Lq/d;->V:I

    .line 204
    .line 205
    iput v6, v0, Lq/d;->W:F

    .line 206
    .line 207
    iput v5, v0, Lq/d;->X:I

    .line 208
    .line 209
    iput v1, v0, Lq/d;->Y:I

    .line 210
    .line 211
    iput v1, v0, Lq/d;->Z:I

    .line 212
    .line 213
    iput v1, v0, Lq/d;->a0:I

    .line 214
    .line 215
    const/high16 v6, 0x3f000000    # 0.5f

    .line 216
    .line 217
    iput v6, v0, Lq/d;->d0:F

    .line 218
    .line 219
    iput v6, v0, Lq/d;->e0:F

    .line 220
    .line 221
    iput v1, v0, Lq/d;->g0:I

    .line 222
    .line 223
    iput-object v2, v0, Lq/d;->h0:Ljava/lang/String;

    .line 224
    .line 225
    iput v1, v0, Lq/d;->i0:I

    .line 226
    .line 227
    iput v1, v0, Lq/d;->j0:I

    .line 228
    .line 229
    new-array v6, v3, [F

    .line 230
    .line 231
    fill-array-data v6, :array_1

    .line 232
    .line 233
    .line 234
    iput-object v6, v0, Lq/d;->k0:[F

    .line 235
    .line 236
    new-array v6, v3, [Lq/d;

    .line 237
    .line 238
    aput-object v2, v6, v1

    .line 239
    .line 240
    aput-object v2, v6, v4

    .line 241
    .line 242
    iput-object v6, v0, Lq/d;->l0:[Lq/d;

    .line 243
    .line 244
    new-array v3, v3, [Lq/d;

    .line 245
    .line 246
    aput-object v2, v3, v1

    .line 247
    .line 248
    aput-object v2, v3, v4

    .line 249
    .line 250
    iput-object v3, v0, Lq/d;->m0:[Lq/d;

    .line 251
    .line 252
    iput v5, v0, Lq/d;->n0:I

    .line 253
    .line 254
    iput v5, v0, Lq/d;->o0:I

    .line 255
    .line 256
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-object/from16 v1, v20

    .line 266
    .line 267
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-object/from16 v1, v18

    .line 271
    .line 272
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-object/from16 v1, v17

    .line 276
    .line 277
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-object/from16 v1, v16

    .line 281
    .line 282
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-object/from16 v1, v19

    .line 286
    .line 287
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    nop

    .line 297
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static H(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    .line 1
    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "      size"

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      min"

    invoke-static {p3, v0, p1, p0}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      max"

    const p2, 0x7fffffff

    invoke-static {p4, p2, p1, p0}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchMin"

    invoke-static {p5, v0, p1, p0}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchDef"

    invoke-static {p6, v0, p1, p0}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Lq/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lq/c;->f:Lq/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : [ \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lq/c;->f:Lq/c;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lq/c;->h:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    iget p1, p2, Lq/c;->g:I

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lq/c;->g:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Lq/c;->h:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lq/c;->h:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, " ] ,\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lq/d;->g0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/d;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lq/d;->I:Lq/c;

    .line 6
    .line 7
    iget-boolean v0, v0, Lq/c;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq/d;->K:Lq/c;

    .line 12
    .line 13
    iget-boolean v0, v0, Lq/c;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/d;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lq/d;->J:Lq/c;

    .line 6
    .line 7
    iget-boolean v0, v0, Lq/c;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq/d;->L:Lq/c;

    .line 12
    .line 13
    iget-boolean v0, v0, Lq/c;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public D()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq/d;->I:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->J:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->K:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->L:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->M:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->N:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->O:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    iget-object v0, p0, Lq/d;->P:Lq/c;

    invoke-virtual {v0}, Lq/c;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/d;->T:Lq/d;

    const/4 v1, 0x0

    iput v1, p0, Lq/d;->D:F

    const/4 v2, 0x0

    iput v2, p0, Lq/d;->U:I

    iput v2, p0, Lq/d;->V:I

    iput v1, p0, Lq/d;->W:F

    const/4 v1, -0x1

    iput v1, p0, Lq/d;->X:I

    iput v2, p0, Lq/d;->Y:I

    iput v2, p0, Lq/d;->Z:I

    iput v2, p0, Lq/d;->a0:I

    iput v2, p0, Lq/d;->b0:I

    iput v2, p0, Lq/d;->c0:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lq/d;->d0:F

    iput v3, p0, Lq/d;->e0:F

    iget-object v3, p0, Lq/d;->p0:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    aput v4, v3, v4

    iput-object v0, p0, Lq/d;->f0:Ljava/lang/Object;

    iput v2, p0, Lq/d;->g0:I

    iput v2, p0, Lq/d;->i0:I

    iput v2, p0, Lq/d;->j0:I

    iget-object v0, p0, Lq/d;->k0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v4

    iput v1, p0, Lq/d;->o:I

    iput v1, p0, Lq/d;->p:I

    iget-object v0, p0, Lq/d;->C:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v4

    iput v2, p0, Lq/d;->r:I

    iput v2, p0, Lq/d;->s:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lq/d;->w:F

    iput v0, p0, Lq/d;->z:F

    iput v3, p0, Lq/d;->v:I

    iput v3, p0, Lq/d;->y:I

    iput v2, p0, Lq/d;->u:I

    iput v2, p0, Lq/d;->x:I

    iput v1, p0, Lq/d;->A:I

    iput v0, p0, Lq/d;->B:F

    iget-object v0, p0, Lq/d;->f:[Z

    aput-boolean v4, v0, v2

    aput-boolean v4, v0, v4

    iput-boolean v2, p0, Lq/d;->F:Z

    iget-object v0, p0, Lq/d;->S:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v4

    iput-boolean v4, p0, Lq/d;->g:Z

    iget-object v0, p0, Lq/d;->t:[I

    aput v2, v0, v2

    aput v2, v0, v4

    iput v1, p0, Lq/d;->h:I

    iput v1, p0, Lq/d;->i:I

    return-void
.end method

.method public final E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq/d;->T:Lq/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lq/e;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lq/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lq/d;->R:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lq/c;

    .line 28
    .line 29
    invoke-virtual {v3}, Lq/c;->j()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final F()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq/d;->k:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lq/d;->l:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lq/d;->m:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lq/d;->n:Z

    .line 9
    .line 10
    iget-object v1, p0, Lq/d;->R:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lq/c;

    .line 24
    .line 25
    iput-boolean v0, v4, Lq/c;->c:Z

    .line 26
    .line 27
    iput v0, v4, Lq/c;->b:I

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public G(Lv1/m;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq/d;->I:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->J:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->K:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->L:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->M:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->P:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->N:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    iget-object p1, p0, Lq/d;->O:Lq/c;

    invoke-virtual {p1}, Lq/c;->k()V

    return-void
.end method

.method public final J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq/d;->a0:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lq/d;->E:Z

    return-void
.end method

.method public final K(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/d;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lq/d;->I:Lq/c;

    invoke-virtual {v0, p1}, Lq/c;->l(I)V

    iget-object v0, p0, Lq/d;->K:Lq/c;

    invoke-virtual {v0, p2}, Lq/c;->l(I)V

    iput p1, p0, Lq/d;->Y:I

    sub-int/2addr p2, p1

    iput p2, p0, Lq/d;->U:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/d;->k:Z

    return-void
.end method

.method public final L(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/d;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lq/d;->J:Lq/c;

    invoke-virtual {v0, p1}, Lq/c;->l(I)V

    iget-object v0, p0, Lq/d;->L:Lq/c;

    invoke-virtual {v0, p2}, Lq/c;->l(I)V

    iput p1, p0, Lq/d;->Z:I

    sub-int/2addr p2, p1

    iput p2, p0, Lq/d;->V:I

    iget-boolean p2, p0, Lq/d;->E:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lq/d;->a0:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lq/d;->M:Lq/c;

    invoke-virtual {p2, p1}, Lq/c;->l(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/d;->l:Z

    return-void
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iput p1, p0, Lq/d;->V:I

    iget v0, p0, Lq/d;->c0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lq/d;->V:I

    :cond_0
    return-void
.end method

.method public final N(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->p0:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public final O(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->p0:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public final P(I)V
    .locals 1

    .line 1
    iput p1, p0, Lq/d;->U:I

    iget v0, p0, Lq/d;->b0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lq/d;->U:I

    :cond_0
    return-void
.end method

.method public Q(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq/d;->d:Lr/k;

    .line 2
    .line 3
    iget-boolean v1, v0, Lr/o;->g:Z

    .line 4
    .line 5
    and-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Lq/d;->e:Lr/m;

    .line 7
    .line 8
    iget-boolean v2, v1, Lr/o;->g:Z

    .line 9
    .line 10
    and-int/2addr p2, v2

    .line 11
    iget-object v2, v0, Lr/o;->h:Lr/f;

    .line 12
    .line 13
    iget v2, v2, Lr/f;->g:I

    .line 14
    .line 15
    iget-object v3, v1, Lr/o;->h:Lr/f;

    .line 16
    .line 17
    iget v3, v3, Lr/f;->g:I

    .line 18
    .line 19
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 20
    .line 21
    iget v0, v0, Lr/f;->g:I

    .line 22
    .line 23
    iget-object v1, v1, Lr/o;->i:Lr/f;

    .line 24
    .line 25
    iget v1, v1, Lr/f;->g:I

    .line 26
    .line 27
    sub-int v4, v0, v2

    .line 28
    .line 29
    sub-int v5, v1, v3

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-ltz v4, :cond_0

    .line 33
    .line 34
    if-ltz v5, :cond_0

    .line 35
    .line 36
    const/high16 v4, -0x80000000

    .line 37
    .line 38
    if-eq v2, v4, :cond_0

    .line 39
    .line 40
    const v5, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-eq v2, v5, :cond_0

    .line 44
    .line 45
    if-eq v3, v4, :cond_0

    .line 46
    .line 47
    if-eq v3, v5, :cond_0

    .line 48
    .line 49
    if-eq v0, v4, :cond_0

    .line 50
    .line 51
    if-eq v0, v5, :cond_0

    .line 52
    .line 53
    if-eq v1, v4, :cond_0

    .line 54
    .line 55
    if-ne v1, v5, :cond_1

    .line 56
    .line 57
    :cond_0
    move v0, v6

    .line 58
    move v1, v0

    .line 59
    move v2, v1

    .line 60
    move v3, v2

    .line 61
    :cond_1
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v3

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iput v2, p0, Lq/d;->Y:I

    .line 66
    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iput v3, p0, Lq/d;->Z:I

    .line 70
    .line 71
    :cond_3
    iget v2, p0, Lq/d;->g0:I

    .line 72
    .line 73
    const/16 v3, 0x8

    .line 74
    .line 75
    if-ne v2, v3, :cond_4

    .line 76
    .line 77
    iput v6, p0, Lq/d;->U:I

    .line 78
    .line 79
    iput v6, p0, Lq/d;->V:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    iget-object v2, p0, Lq/d;->p0:[I

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    aget p1, v2, v6

    .line 88
    .line 89
    if-ne p1, v3, :cond_5

    .line 90
    .line 91
    iget p1, p0, Lq/d;->U:I

    .line 92
    .line 93
    if-ge v0, p1, :cond_5

    .line 94
    .line 95
    move v0, p1

    .line 96
    :cond_5
    iput v0, p0, Lq/d;->U:I

    .line 97
    .line 98
    iget p1, p0, Lq/d;->b0:I

    .line 99
    .line 100
    if-ge v0, p1, :cond_6

    .line 101
    .line 102
    iput p1, p0, Lq/d;->U:I

    .line 103
    .line 104
    :cond_6
    if-eqz p2, :cond_8

    .line 105
    .line 106
    aget p1, v2, v3

    .line 107
    .line 108
    if-ne p1, v3, :cond_7

    .line 109
    .line 110
    iget p1, p0, Lq/d;->V:I

    .line 111
    .line 112
    if-ge v1, p1, :cond_7

    .line 113
    .line 114
    move v1, p1

    .line 115
    :cond_7
    iput v1, p0, Lq/d;->V:I

    .line 116
    .line 117
    iget p1, p0, Lq/d;->c0:I

    .line 118
    .line 119
    if-ge v1, p1, :cond_8

    .line 120
    .line 121
    iput p1, p0, Lq/d;->V:I

    .line 122
    .line 123
    :cond_8
    return-void
.end method

.method public R(Lo/d;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq/d;->I:Lq/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lo/d;->n(Lq/c;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lq/d;->J:Lq/c;

    .line 11
    .line 12
    invoke-static {v0}, Lo/d;->n(Lq/c;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lq/d;->K:Lq/c;

    .line 17
    .line 18
    invoke-static {v1}, Lo/d;->n(Lq/c;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lq/d;->L:Lq/c;

    .line 23
    .line 24
    invoke-static {v2}, Lo/d;->n(Lq/c;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lq/d;->d:Lr/k;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v4, v3, Lr/o;->h:Lr/f;

    .line 35
    .line 36
    iget-boolean v5, v4, Lr/f;->j:Z

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    iget-object v3, v3, Lr/o;->i:Lr/f;

    .line 41
    .line 42
    iget-boolean v5, v3, Lr/f;->j:Z

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    iget p1, v4, Lr/f;->g:I

    .line 47
    .line 48
    iget v1, v3, Lr/f;->g:I

    .line 49
    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lq/d;->e:Lr/m;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object v3, p2, Lr/o;->h:Lr/f;

    .line 57
    .line 58
    iget-boolean v4, v3, Lr/f;->j:Z

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object p2, p2, Lr/o;->i:Lr/f;

    .line 63
    .line 64
    iget-boolean v4, p2, Lr/f;->j:Z

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    iget v0, v3, Lr/f;->g:I

    .line 69
    .line 70
    iget v2, p2, Lr/f;->g:I

    .line 71
    .line 72
    :cond_1
    sub-int p2, v1, p1

    .line 73
    .line 74
    sub-int v3, v2, v0

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    if-ltz p2, :cond_2

    .line 78
    .line 79
    if-ltz v3, :cond_2

    .line 80
    .line 81
    const/high16 p2, -0x80000000

    .line 82
    .line 83
    if-eq p1, p2, :cond_2

    .line 84
    .line 85
    const v3, 0x7fffffff

    .line 86
    .line 87
    .line 88
    if-eq p1, v3, :cond_2

    .line 89
    .line 90
    if-eq v0, p2, :cond_2

    .line 91
    .line 92
    if-eq v0, v3, :cond_2

    .line 93
    .line 94
    if-eq v1, p2, :cond_2

    .line 95
    .line 96
    if-eq v1, v3, :cond_2

    .line 97
    .line 98
    if-eq v2, p2, :cond_2

    .line 99
    .line 100
    if-ne v2, v3, :cond_3

    .line 101
    .line 102
    :cond_2
    move p1, v4

    .line 103
    move v0, p1

    .line 104
    move v1, v0

    .line 105
    move v2, v1

    .line 106
    :cond_3
    sub-int/2addr v1, p1

    .line 107
    sub-int/2addr v2, v0

    .line 108
    iput p1, p0, Lq/d;->Y:I

    .line 109
    .line 110
    iput v0, p0, Lq/d;->Z:I

    .line 111
    .line 112
    iget p1, p0, Lq/d;->g0:I

    .line 113
    .line 114
    const/16 p2, 0x8

    .line 115
    .line 116
    if-ne p1, p2, :cond_4

    .line 117
    .line 118
    iput v4, p0, Lq/d;->U:I

    .line 119
    .line 120
    iput v4, p0, Lq/d;->V:I

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object p1, p0, Lq/d;->p0:[I

    .line 124
    .line 125
    aget p2, p1, v4

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    if-ne p2, v0, :cond_5

    .line 129
    .line 130
    iget v3, p0, Lq/d;->U:I

    .line 131
    .line 132
    if-ge v1, v3, :cond_5

    .line 133
    .line 134
    move v1, v3

    .line 135
    :cond_5
    aget v3, p1, v0

    .line 136
    .line 137
    if-ne v3, v0, :cond_6

    .line 138
    .line 139
    iget v3, p0, Lq/d;->V:I

    .line 140
    .line 141
    if-ge v2, v3, :cond_6

    .line 142
    .line 143
    move v2, v3

    .line 144
    :cond_6
    iput v1, p0, Lq/d;->U:I

    .line 145
    .line 146
    iput v2, p0, Lq/d;->V:I

    .line 147
    .line 148
    iget v3, p0, Lq/d;->c0:I

    .line 149
    .line 150
    if-ge v2, v3, :cond_7

    .line 151
    .line 152
    iput v3, p0, Lq/d;->V:I

    .line 153
    .line 154
    :cond_7
    iget v3, p0, Lq/d;->b0:I

    .line 155
    .line 156
    if-ge v1, v3, :cond_8

    .line 157
    .line 158
    iput v3, p0, Lq/d;->U:I

    .line 159
    .line 160
    :cond_8
    iget v3, p0, Lq/d;->v:I

    .line 161
    .line 162
    const/4 v4, 0x3

    .line 163
    if-lez v3, :cond_9

    .line 164
    .line 165
    if-ne p2, v4, :cond_9

    .line 166
    .line 167
    iget p2, p0, Lq/d;->U:I

    .line 168
    .line 169
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    iput p2, p0, Lq/d;->U:I

    .line 174
    .line 175
    :cond_9
    iget p2, p0, Lq/d;->y:I

    .line 176
    .line 177
    if-lez p2, :cond_a

    .line 178
    .line 179
    aget p1, p1, v0

    .line 180
    .line 181
    if-ne p1, v4, :cond_a

    .line 182
    .line 183
    iget p1, p0, Lq/d;->V:I

    .line 184
    .line 185
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    iput p1, p0, Lq/d;->V:I

    .line 190
    .line 191
    :cond_a
    iget p1, p0, Lq/d;->U:I

    .line 192
    .line 193
    if-eq v1, p1, :cond_b

    .line 194
    .line 195
    iput p1, p0, Lq/d;->h:I

    .line 196
    .line 197
    :cond_b
    iget p1, p0, Lq/d;->V:I

    .line 198
    .line 199
    if-eq v2, p1, :cond_c

    .line 200
    .line 201
    iput p1, p0, Lq/d;->i:I

    .line 202
    .line 203
    :cond_c
    :goto_0
    return-void
.end method

.method public final b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    if-nez p5, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2, p0}, Lq/k;->a(Lq/e;Lo/d;Lq/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const/16 p5, 0x40

    .line 17
    .line 18
    invoke-virtual {p1, p5}, Lq/e;->X(I)Z

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    invoke-virtual {p0, p2, p5}, Lq/d;->c(Lo/d;Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-nez p4, :cond_3

    .line 26
    .line 27
    iget-object p5, p0, Lq/d;->I:Lq/c;

    .line 28
    .line 29
    iget-object p5, p5, Lq/c;->a:Ljava/util/HashSet;

    .line 30
    .line 31
    if-eqz p5, :cond_2

    .line 32
    .line 33
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lq/c;

    .line 48
    .line 49
    iget-object v1, v0, Lq/c;->d:Lq/d;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v2, p1

    .line 53
    move-object v3, p2

    .line 54
    move-object v4, p3

    .line 55
    move v5, p4

    .line 56
    invoke-virtual/range {v1 .. v6}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p5, p0, Lq/d;->K:Lq/c;

    .line 61
    .line 62
    iget-object p5, p5, Lq/c;->a:Ljava/util/HashSet;

    .line 63
    .line 64
    if-eqz p5, :cond_6

    .line 65
    .line 66
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lq/c;

    .line 81
    .line 82
    iget-object v1, v0, Lq/c;->d:Lq/d;

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    move-object v2, p1

    .line 86
    move-object v3, p2

    .line 87
    move-object v4, p3

    .line 88
    move v5, p4

    .line 89
    invoke-virtual/range {v1 .. v6}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p5, p0, Lq/d;->J:Lq/c;

    .line 94
    .line 95
    iget-object p5, p5, Lq/c;->a:Ljava/util/HashSet;

    .line 96
    .line 97
    if-eqz p5, :cond_4

    .line 98
    .line 99
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p5

    .line 103
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lq/c;

    .line 114
    .line 115
    iget-object v1, v0, Lq/c;->d:Lq/d;

    .line 116
    .line 117
    const/4 v6, 0x1

    .line 118
    move-object v2, p1

    .line 119
    move-object v3, p2

    .line 120
    move-object v4, p3

    .line 121
    move v5, p4

    .line 122
    invoke-virtual/range {v1 .. v6}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    iget-object p5, p0, Lq/d;->L:Lq/c;

    .line 127
    .line 128
    iget-object p5, p5, Lq/c;->a:Ljava/util/HashSet;

    .line 129
    .line 130
    if-eqz p5, :cond_5

    .line 131
    .line 132
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p5

    .line 136
    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lq/c;

    .line 147
    .line 148
    iget-object v1, v0, Lq/c;->d:Lq/d;

    .line 149
    .line 150
    const/4 v6, 0x1

    .line 151
    move-object v2, p1

    .line 152
    move-object v3, p2

    .line 153
    move-object v4, p3

    .line 154
    move v5, p4

    .line 155
    invoke-virtual/range {v1 .. v6}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    iget-object p5, p0, Lq/d;->M:Lq/c;

    .line 160
    .line 161
    iget-object p5, p5, Lq/c;->a:Ljava/util/HashSet;

    .line 162
    .line 163
    if-eqz p5, :cond_6

    .line 164
    .line 165
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p5

    .line 169
    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lq/c;

    .line 180
    .line 181
    iget-object v1, v0, Lq/c;->d:Lq/d;

    .line 182
    .line 183
    const/4 v6, 0x1

    .line 184
    move-object v2, p1

    .line 185
    move-object v3, p2

    .line 186
    move-object v4, p3

    .line 187
    move v5, p4

    .line 188
    invoke-virtual/range {v1 .. v6}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    return-void
.end method

.method public c(Lo/d;Z)V
    .locals 62

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lq/d;->I:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v13

    iget-object v1, v15, Lq/d;->K:Lq/c;

    invoke-virtual {v14, v1}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v12

    iget-object v2, v15, Lq/d;->J:Lq/c;

    invoke-virtual {v14, v2}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v11

    iget-object v10, v15, Lq/d;->L:Lq/c;

    invoke-virtual {v14, v10}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v9

    iget-object v8, v15, Lq/d;->M:Lq/c;

    invoke-virtual {v14, v8}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v7

    iget-object v3, v15, Lq/d;->T:Lq/d;

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Lq/d;->p0:[I

    aget v4, v3, v5

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v5

    const/4 v4, 0x1

    :goto_0
    aget v3, v3, v4

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    iget v5, v15, Lq/d;->q:I

    if-eq v5, v4, :cond_4

    if-eq v5, v6, :cond_3

    const/4 v4, 0x3

    if-eq v5, v4, :cond_2

    move/from16 v28, v3

    move/from16 v29, v18

    goto :goto_3

    :cond_2
    const/16 v28, 0x0

    :goto_2
    const/16 v29, 0x0

    goto :goto_3

    :cond_3
    move/from16 v28, v3

    goto :goto_2

    :cond_4
    move/from16 v29, v18

    const/16 v28, 0x0

    :goto_3
    iget v3, v15, Lq/d;->g0:I

    iget-object v4, v15, Lq/d;->S:[Z

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    iget-object v3, v15, Lq/d;->R:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lq/c;

    .line 2
    iget-object v3, v3, Lq/c;->a:Ljava/util/HashSet;

    if-nez v3, :cond_5

    goto :goto_5

    .line 3
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v22

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 4
    aget-boolean v5, v4, v3

    if-nez v5, :cond_8

    const/4 v3, 0x1

    aget-boolean v5, v4, v3

    if-nez v5, :cond_8

    return-void

    :cond_8
    :goto_6
    iget-boolean v3, v15, Lq/d;->k:Z

    if-nez v3, :cond_9

    iget-boolean v5, v15, Lq/d;->l:Z

    if-eqz v5, :cond_14

    :cond_9
    if-eqz v3, :cond_d

    iget v3, v15, Lq/d;->Y:I

    invoke-virtual {v14, v13, v3}, Lo/d;->d(Lo/j;I)V

    iget v3, v15, Lq/d;->Y:I

    iget v5, v15, Lq/d;->U:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v12, v3}, Lo/d;->d(Lo/j;I)V

    if-eqz v29, :cond_d

    iget-object v3, v15, Lq/d;->T:Lq/d;

    if-eqz v3, :cond_d

    check-cast v3, Lq/e;

    .line 5
    iget-object v5, v3, Lq/e;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lq/c;->d()I

    move-result v5

    iget-object v6, v3, Lq/e;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/c;

    invoke-virtual {v6}, Lq/c;->d()I

    move-result v6

    if-le v5, v6, :cond_b

    :cond_a
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lq/e;->H0:Ljava/lang/ref/WeakReference;

    .line 6
    :cond_b
    iget-object v5, v3, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lq/c;->d()I

    move-result v5

    iget-object v6, v3, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/c;

    invoke-virtual {v6}, Lq/c;->d()I

    move-result v6

    if-le v5, v6, :cond_d

    :cond_c
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-boolean v3, v15, Lq/d;->l:Z

    if-eqz v3, :cond_13

    iget v3, v15, Lq/d;->Z:I

    .line 7
    invoke-virtual {v14, v11, v3}, Lo/d;->d(Lo/j;I)V

    iget v3, v15, Lq/d;->Z:I

    iget v5, v15, Lq/d;->V:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v9, v3}, Lo/d;->d(Lo/j;I)V

    .line 8
    iget-object v3, v8, Lq/c;->a:Ljava/util/HashSet;

    if-nez v3, :cond_e

    goto :goto_7

    .line 9
    :cond_e
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_f

    iget v3, v15, Lq/d;->Z:I

    iget v5, v15, Lq/d;->a0:I

    add-int/2addr v3, v5

    .line 10
    invoke-virtual {v14, v7, v3}, Lo/d;->d(Lo/j;I)V

    :cond_f
    :goto_7
    if-eqz v28, :cond_13

    iget-object v3, v15, Lq/d;->T:Lq/d;

    if-eqz v3, :cond_13

    check-cast v3, Lq/e;

    .line 11
    iget-object v5, v3, Lq/e;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lq/c;->d()I

    move-result v5

    iget-object v6, v3, Lq/e;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/c;

    invoke-virtual {v6}, Lq/c;->d()I

    move-result v6

    if-le v5, v6, :cond_11

    :cond_10
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lq/e;->G0:Ljava/lang/ref/WeakReference;

    .line 12
    :cond_11
    iget-object v5, v3, Lq/e;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v10}, Lq/c;->d()I

    move-result v5

    iget-object v6, v3, Lq/e;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/c;

    invoke-virtual {v6}, Lq/c;->d()I

    move-result v6

    if-le v5, v6, :cond_13

    :cond_12
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lq/e;->I0:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-boolean v3, v15, Lq/d;->k:Z

    if-eqz v3, :cond_14

    iget-boolean v3, v15, Lq/d;->l:Z

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    iput-boolean v3, v15, Lq/d;->k:Z

    iput-boolean v3, v15, Lq/d;->l:Z

    return-void

    :cond_14
    iget-object v6, v15, Lq/d;->f:[Z

    if-eqz p2, :cond_18

    iget-object v3, v15, Lq/d;->d:Lr/k;

    if-eqz v3, :cond_18

    iget-object v5, v15, Lq/d;->e:Lr/m;

    if-eqz v5, :cond_18

    move-object/from16 v21, v4

    .line 13
    iget-object v4, v3, Lr/o;->h:Lr/f;

    move-object/from16 v22, v8

    iget-boolean v8, v4, Lr/f;->j:Z

    if-eqz v8, :cond_17

    iget-object v3, v3, Lr/o;->i:Lr/f;

    iget-boolean v3, v3, Lr/f;->j:Z

    if-eqz v3, :cond_17

    iget-object v3, v5, Lr/o;->h:Lr/f;

    iget-boolean v3, v3, Lr/f;->j:Z

    if-eqz v3, :cond_17

    iget-object v3, v5, Lr/o;->i:Lr/f;

    iget-boolean v3, v3, Lr/f;->j:Z

    if-eqz v3, :cond_17

    iget v0, v4, Lr/f;->g:I

    invoke-virtual {v14, v13, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->d:Lr/k;

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget v0, v0, Lr/f;->g:I

    invoke-virtual {v14, v12, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->e:Lr/m;

    iget-object v0, v0, Lr/o;->h:Lr/f;

    iget v0, v0, Lr/f;->g:I

    invoke-virtual {v14, v11, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->e:Lr/m;

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget v0, v0, Lr/f;->g:I

    invoke-virtual {v14, v9, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->e:Lr/m;

    iget-object v0, v0, Lr/m;->k:Lr/f;

    iget v0, v0, Lr/f;->g:I

    invoke-virtual {v14, v7, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_16

    if-eqz v29, :cond_15

    const/4 v0, 0x0

    aget-boolean v1, v6, v0

    if-eqz v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lq/d;->y()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v15, Lq/d;->T:Lq/d;

    iget-object v1, v1, Lq/d;->K:Lq/c;

    invoke-virtual {v14, v1}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_15
    if-eqz v28, :cond_16

    const/4 v0, 0x1

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lq/d;->z()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v15, Lq/d;->T:Lq/d;

    iget-object v0, v0, Lq/d;->L:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v9, v3, v1}, Lo/d;->f(Lo/j;Lo/j;II)V

    goto :goto_8

    :cond_16
    const/4 v3, 0x0

    :goto_8
    iput-boolean v3, v15, Lq/d;->k:Z

    iput-boolean v3, v15, Lq/d;->l:Z

    return-void

    :cond_17
    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_18
    move-object/from16 v21, v4

    move-object/from16 v22, v8

    goto :goto_9

    :goto_a
    iget-object v4, v15, Lq/d;->T:Lq/d;

    if-eqz v4, :cond_1d

    invoke-virtual {v15, v3}, Lq/d;->x(I)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v15, Lq/d;->T:Lq/d;

    check-cast v4, Lq/e;

    invoke-virtual {v4, v3, v15}, Lq/e;->T(ILq/d;)V

    const/4 v3, 0x1

    :goto_b
    const/4 v4, 0x1

    goto :goto_c

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lq/d;->y()Z

    move-result v3

    goto :goto_b

    :goto_c
    invoke-virtual {v15, v4}, Lq/d;->x(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, v15, Lq/d;->T:Lq/d;

    check-cast v5, Lq/e;

    invoke-virtual {v5, v4, v15}, Lq/e;->T(ILq/d;)V

    const/4 v4, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lq/d;->z()Z

    move-result v4

    :goto_d
    if-nez v3, :cond_1b

    if-eqz v29, :cond_1b

    iget v5, v15, Lq/d;->g0:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_1b

    iget-object v5, v0, Lq/c;->f:Lq/c;

    if-nez v5, :cond_1b

    iget-object v5, v1, Lq/c;->f:Lq/c;

    if-nez v5, :cond_1b

    iget-object v5, v15, Lq/d;->T:Lq/d;

    iget-object v5, v5, Lq/d;->K:Lq/c;

    invoke-virtual {v14, v5}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v5

    move/from16 v23, v3

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v14, v5, v12, v3, v8}, Lo/d;->f(Lo/j;Lo/j;II)V

    goto :goto_e

    :cond_1b
    move/from16 v23, v3

    :goto_e
    if-nez v4, :cond_1c

    if-eqz v28, :cond_1c

    iget v3, v15, Lq/d;->g0:I

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1c

    iget-object v3, v2, Lq/c;->f:Lq/c;

    if-nez v3, :cond_1c

    iget-object v3, v10, Lq/c;->f:Lq/c;

    if-nez v3, :cond_1c

    if-nez v22, :cond_1c

    iget-object v3, v15, Lq/d;->T:Lq/d;

    iget-object v3, v3, Lq/d;->L:Lq/c;

    invoke-virtual {v14, v3}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v14, v3, v9, v8, v5}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_1c
    move/from16 v30, v4

    move/from16 v31, v23

    goto :goto_f

    :cond_1d
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_f
    iget v3, v15, Lq/d;->U:I

    iget v4, v15, Lq/d;->b0:I

    if-ge v3, v4, :cond_1e

    goto :goto_10

    :cond_1e
    move v4, v3

    :goto_10
    iget v5, v15, Lq/d;->V:I

    iget v8, v15, Lq/d;->c0:I

    if-ge v5, v8, :cond_1f

    :goto_11
    move-object/from16 v23, v11

    goto :goto_12

    :cond_1f
    move v8, v5

    goto :goto_11

    :goto_12
    iget-object v11, v15, Lq/d;->p0:[I

    move/from16 v24, v4

    const/16 v19, 0x0

    aget v4, v11, v19

    move-object/from16 v27, v7

    const/4 v7, 0x3

    move/from16 v26, v8

    const/16 v16, 0x1

    if-eq v4, v7, :cond_20

    const/16 v25, 0x1

    goto :goto_13

    :cond_20
    const/16 v25, 0x0

    :goto_13
    aget v8, v11, v16

    move-object/from16 v32, v9

    if-eq v8, v7, :cond_21

    const/4 v7, 0x1

    goto :goto_14

    :cond_21
    const/4 v7, 0x0

    :goto_14
    iget v9, v15, Lq/d;->X:I

    iput v9, v15, Lq/d;->A:I

    move-object/from16 v33, v6

    iget v6, v15, Lq/d;->W:F

    iput v6, v15, Lq/d;->B:F

    move-object/from16 v34, v12

    iget v12, v15, Lq/d;->r:I

    move-object/from16 v35, v13

    iget v13, v15, Lq/d;->s:I

    const/16 v36, 0x0

    cmpl-float v36, v6, v36

    if-lez v36, :cond_35

    iget v14, v15, Lq/d;->g0:I

    move-object/from16 v39, v11

    const/16 v11, 0x8

    if-eq v14, v11, :cond_34

    const/4 v11, 0x3

    if-ne v4, v11, :cond_22

    if-nez v12, :cond_22

    move v12, v11

    :cond_22
    if-ne v8, v11, :cond_23

    if-nez v13, :cond_23

    move v13, v11

    :cond_23
    if-ne v4, v11, :cond_2f

    if-ne v8, v11, :cond_2f

    if-ne v12, v11, :cond_2f

    if-ne v13, v11, :cond_2f

    const/4 v11, -0x1

    if-ne v9, v11, :cond_25

    if-eqz v25, :cond_24

    if-nez v7, :cond_24

    const/4 v3, 0x0

    iput v3, v15, Lq/d;->A:I

    goto :goto_15

    :cond_24
    if-nez v25, :cond_25

    if-eqz v7, :cond_25

    const/4 v3, 0x1

    iput v3, v15, Lq/d;->A:I

    if-ne v9, v11, :cond_25

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v14, v3, v6

    iput v14, v15, Lq/d;->B:F

    :cond_25
    :goto_15
    iget v3, v15, Lq/d;->A:I

    if-nez v3, :cond_27

    .line 14
    invoke-virtual {v2}, Lq/c;->h()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v10}, Lq/c;->h()Z

    move-result v3

    if-nez v3, :cond_27

    :cond_26
    const/4 v3, 0x1

    goto :goto_16

    :cond_27
    const/4 v3, 0x1

    goto :goto_17

    :goto_16
    iput v3, v15, Lq/d;->A:I

    goto :goto_18

    :goto_17
    iget v4, v15, Lq/d;->A:I

    if-ne v4, v3, :cond_29

    invoke-virtual {v0}, Lq/c;->h()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v1}, Lq/c;->h()Z

    move-result v3

    if-nez v3, :cond_29

    :cond_28
    const/4 v3, 0x0

    goto :goto_16

    :cond_29
    :goto_18
    iget v3, v15, Lq/d;->A:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    invoke-virtual {v2}, Lq/c;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v10}, Lq/c;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v0}, Lq/c;->h()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1}, Lq/c;->h()Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    invoke-virtual {v2}, Lq/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v10}, Lq/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    iput v2, v15, Lq/d;->A:I

    goto :goto_19

    :cond_2b
    invoke-virtual {v0}, Lq/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lq/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, v15, Lq/d;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lq/d;->B:F

    const/4 v0, 0x1

    iput v0, v15, Lq/d;->A:I

    :cond_2c
    :goto_19
    iget v0, v15, Lq/d;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget v0, v15, Lq/d;->u:I

    if-lez v0, :cond_2d

    iget v1, v15, Lq/d;->x:I

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    iput v1, v15, Lq/d;->A:I

    goto :goto_1a

    :cond_2d
    if-nez v0, :cond_2e

    iget v0, v15, Lq/d;->x:I

    if-lez v0, :cond_2e

    iget v0, v15, Lq/d;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lq/d;->B:F

    const/4 v0, 0x1

    iput v0, v15, Lq/d;->A:I

    :cond_2e
    :goto_1a
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1c

    :cond_2f
    move v0, v11

    if-ne v4, v0, :cond_31

    if-ne v12, v0, :cond_31

    const/4 v1, 0x0

    iput v1, v15, Lq/d;->A:I

    int-to-float v1, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    if-eq v8, v0, :cond_30

    move/from16 v41, v13

    move/from16 v40, v26

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v38, 0x0

    const/16 v42, 0x4

    goto :goto_1f

    :cond_30
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v40, v26

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_1b
    const/16 v38, 0x1

    goto :goto_1f

    :cond_31
    if-ne v8, v0, :cond_2e

    if-ne v13, v0, :cond_2e

    const/4 v1, 0x1

    iput v1, v15, Lq/d;->A:I

    const/4 v1, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    if-ne v9, v1, :cond_32

    div-float v1, v14, v6

    iput v1, v15, Lq/d;->B:F

    :cond_32
    iget v1, v15, Lq/d;->B:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v8, v1

    move/from16 v40, v8

    move/from16 v42, v12

    if-eq v4, v0, :cond_33

    move/from16 v4, v24

    const/16 v38, 0x0

    const/16 v41, 0x4

    goto :goto_1f

    :cond_33
    move/from16 v41, v13

    move/from16 v4, v24

    goto :goto_1b

    :goto_1c
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v4, v24

    move/from16 v40, v26

    goto :goto_1b

    :cond_34
    :goto_1d
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1e

    :cond_35
    move-object/from16 v39, v11

    goto :goto_1d

    :goto_1e
    move/from16 v42, v12

    move/from16 v41, v13

    move/from16 v4, v24

    move/from16 v40, v26

    const/16 v38, 0x0

    :goto_1f
    iget-object v0, v15, Lq/d;->t:[I

    const/4 v1, 0x0

    .line 15
    aput v42, v0, v1

    const/4 v1, 0x1

    aput v41, v0, v1

    if-eqz v38, :cond_37

    iget v0, v15, Lq/d;->A:I

    const/4 v1, -0x1

    if-eqz v0, :cond_36

    if-ne v0, v1, :cond_38

    :cond_36
    const/16 v36, 0x1

    goto :goto_20

    :cond_37
    const/4 v1, -0x1

    :cond_38
    const/16 v36, 0x0

    :goto_20
    if-eqz v38, :cond_3a

    iget v0, v15, Lq/d;->A:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    if-ne v0, v1, :cond_3a

    :cond_39
    const/4 v0, 0x0

    const/16 v43, 0x1

    goto :goto_21

    :cond_3a
    const/4 v0, 0x0

    const/16 v43, 0x0

    :goto_21
    aget v1, v39, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3b

    instance-of v0, v15, Lq/e;

    if-eqz v0, :cond_3b

    const/4 v9, 0x1

    goto :goto_22

    :cond_3b
    const/4 v9, 0x0

    :goto_22
    if-eqz v9, :cond_3c

    const/4 v13, 0x0

    goto :goto_23

    :cond_3c
    move v13, v4

    :goto_23
    iget-object v12, v15, Lq/d;->P:Lq/c;

    invoke-virtual {v12}, Lq/c;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v44, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v45, v21, v0

    aget-boolean v46, v21, v1

    iget v0, v15, Lq/d;->o:I

    iget-object v11, v15, Lq/d;->C:[I

    const/16 v47, 0x0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_41

    iget-boolean v0, v15, Lq/d;->k:Z

    if-nez v0, :cond_41

    if-eqz p2, :cond_3d

    iget-object v0, v15, Lq/d;->d:Lr/k;

    if-eqz v0, :cond_3d

    iget-object v1, v0, Lr/o;->h:Lr/f;

    iget-boolean v2, v1, Lr/f;->j:Z

    if-eqz v2, :cond_3d

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget-boolean v0, v0, Lr/f;->j:Z

    if-nez v0, :cond_3e

    :cond_3d
    move-object/from16 v8, p1

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    const/16 v3, 0x8

    const/4 v5, 0x4

    goto/16 :goto_25

    :cond_3e
    if-eqz p2, :cond_40

    iget v0, v1, Lr/f;->g:I

    move-object/from16 v8, p1

    move-object/from16 v7, v35

    const/4 v5, 0x4

    invoke-virtual {v8, v7, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->d:Lr/k;

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget v0, v0, Lr/f;->g:I

    move-object/from16 v4, v34

    invoke-virtual {v8, v4, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_3f

    if-eqz v29, :cond_3f

    const/4 v0, 0x0

    aget-boolean v1, v33, v0

    if-eqz v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lq/d;->y()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v15, Lq/d;->T:Lq/d;

    iget-object v1, v1, Lq/d;->K:Lq/c;

    invoke-virtual {v8, v1}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v8, v1, v4, v0, v3}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_3f
    move-object/from16 v58, v4

    move-object/from16 v59, v7

    move-object/from16 v56, v10

    move-object/from16 v34, v11

    move-object/from16 v54, v22

    move-object/from16 v57, v23

    move-object/from16 v53, v27

    move-object/from16 v55, v32

    move-object/from16 v32, v39

    :goto_24
    move-object/from16 v39, v12

    goto/16 :goto_29

    :cond_40
    move-object/from16 v8, p1

    :cond_41
    move-object/from16 v56, v10

    move-object/from16 v54, v22

    move-object/from16 v57, v23

    move-object/from16 v53, v27

    move-object/from16 v55, v32

    move-object/from16 v58, v34

    move-object/from16 v59, v35

    move-object/from16 v32, v39

    move-object/from16 v34, v11

    goto :goto_24

    :goto_25
    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lq/d;->K:Lq/c;

    invoke-virtual {v8, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_26

    :cond_42
    move-object/from16 v18, v47

    :goto_26
    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lq/d;->I:Lq/c;

    invoke-virtual {v8, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_27

    :cond_43
    move-object/from16 v20, v47

    :goto_27
    const/16 v19, 0x0

    aget-boolean v21, v33, v19

    aget v34, v39, v19

    iget-object v1, v15, Lq/d;->I:Lq/c;

    iget-object v0, v15, Lq/d;->K:Lq/c;

    iget v14, v15, Lq/d;->Y:I

    iget v2, v15, Lq/d;->b0:I

    aget v48, v11, v19

    move/from16 v49, v2

    iget v2, v15, Lq/d;->d0:F

    const/16 v17, 0x1

    aget v3, v39, v17

    const/4 v5, 0x3

    if-ne v3, v5, :cond_44

    move/from16 v51, v17

    goto :goto_28

    :cond_44
    move/from16 v51, v19

    :goto_28
    iget v3, v15, Lq/d;->u:I

    move/from16 v24, v3

    iget v3, v15, Lq/d;->v:I

    move/from16 v25, v3

    iget v3, v15, Lq/d;->w:F

    move/from16 v26, v3

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v52, v1

    move-object/from16 v1, p1

    move/from16 v37, v49

    move/from16 v49, v2

    const/4 v2, 0x1

    const/16 v50, 0x8

    move/from16 v3, v29

    move-object/from16 v17, v4

    move/from16 v4, v28

    move/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v19, v7

    move-object/from16 v53, v27

    move-object/from16 v7, v18

    move-object/from16 v54, v22

    move/from16 v8, v34

    move-object/from16 v55, v32

    move-object/from16 v56, v10

    move-object/from16 v10, v52

    move-object/from16 v34, v11

    move-object/from16 v57, v23

    move-object/from16 v32, v39

    move-object/from16 v11, v16

    move-object/from16 v39, v12

    move-object/from16 v58, v17

    move v12, v14

    move-object/from16 v14, v19

    move-object/from16 v59, v14

    move/from16 v14, v37

    move/from16 v15, v48

    move/from16 v16, v49

    move/from16 v17, v36

    move/from16 v18, v51

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v45

    move/from16 v22, v42

    move/from16 v23, v41

    move/from16 v27, v44

    invoke-virtual/range {v0 .. v27}, Lq/d;->e(Lo/d;ZZZZLo/j;Lo/j;IZLq/c;Lq/c;IIIIFZZZZZIIIIFZ)V

    :goto_29
    if-eqz p2, :cond_48

    move-object/from16 v15, p0

    iget-object v0, v15, Lq/d;->e:Lr/m;

    if-eqz v0, :cond_47

    iget-object v1, v0, Lr/o;->h:Lr/f;

    iget-boolean v2, v1, Lr/f;->j:Z

    if-eqz v2, :cond_47

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget-boolean v0, v0, Lr/f;->j:Z

    if-eqz v0, :cond_47

    iget v0, v1, Lr/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v57

    invoke-virtual {v14, v13, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->e:Lr/m;

    iget-object v0, v0, Lr/o;->i:Lr/f;

    iget v0, v0, Lr/f;->g:I

    move-object/from16 v12, v55

    invoke-virtual {v14, v12, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->e:Lr/m;

    iget-object v0, v0, Lr/m;->k:Lr/f;

    iget v0, v0, Lr/f;->g:I

    move-object/from16 v1, v53

    invoke-virtual {v14, v1, v0}, Lo/d;->d(Lo/j;I)V

    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_46

    if-nez v30, :cond_46

    if-eqz v28, :cond_46

    const/4 v11, 0x1

    aget-boolean v2, v33, v11

    if-eqz v2, :cond_45

    iget-object v0, v0, Lq/d;->L:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lo/d;->f(Lo/j;Lo/j;II)V

    goto :goto_2a

    :cond_45
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_2a

    :cond_46
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_2a
    move v4, v10

    goto :goto_2c

    :cond_47
    move-object/from16 v14, p1

    move-object/from16 v1, v53

    move-object/from16 v12, v55

    move-object/from16 v13, v57

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_2b

    :cond_48
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v53

    move-object/from16 v12, v55

    move-object/from16 v13, v57

    :goto_2b
    move v4, v11

    :goto_2c
    iget v0, v15, Lq/d;->p:I

    const/4 v9, 0x5

    const/4 v8, 0x2

    if-ne v0, v8, :cond_49

    goto/16 :goto_32

    :cond_49
    if-eqz v4, :cond_54

    iget-boolean v0, v15, Lq/d;->l:Z

    if-nez v0, :cond_54

    aget v0, v32, v11

    if-ne v0, v8, :cond_4a

    instance-of v0, v15, Lq/e;

    if-eqz v0, :cond_4a

    move/from16 v16, v11

    goto :goto_2d

    :cond_4a
    move/from16 v16, v10

    :goto_2d
    if-eqz v16, :cond_4b

    move/from16 v40, v10

    :cond_4b
    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lq/d;->L:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    move-object v7, v0

    goto :goto_2e

    :cond_4c
    move-object/from16 v7, v47

    :goto_2e
    iget-object v0, v15, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_4d

    iget-object v0, v0, Lq/d;->J:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    move-object v6, v0

    goto :goto_2f

    :cond_4d
    move-object/from16 v6, v47

    :goto_2f
    iget v0, v15, Lq/d;->a0:I

    if-gtz v0, :cond_4e

    iget v3, v15, Lq/d;->g0:I

    if-ne v3, v2, :cond_52

    :cond_4e
    move-object/from16 v3, v54

    iget-object v4, v3, Lq/c;->f:Lq/c;

    if-eqz v4, :cond_50

    invoke-virtual {v14, v1, v13, v0, v2}, Lo/d;->e(Lo/j;Lo/j;II)V

    iget-object v0, v3, Lq/c;->f:Lq/c;

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    invoke-virtual {v3}, Lq/c;->e()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Lo/d;->e(Lo/j;Lo/j;II)V

    if-eqz v28, :cond_4f

    move-object/from16 v0, v56

    invoke-virtual {v14, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    invoke-virtual {v14, v7, v0, v10, v9}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_4f
    move/from16 v27, v10

    goto :goto_30

    :cond_50
    iget v4, v15, Lq/d;->g0:I

    if-ne v4, v2, :cond_51

    invoke-virtual {v3}, Lq/c;->e()I

    move-result v0

    :cond_51
    invoke-virtual {v14, v1, v13, v0, v2}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_52
    move/from16 v27, v44

    :goto_30
    aget-boolean v5, v33, v11

    aget v17, v32, v11

    iget-object v4, v15, Lq/d;->J:Lq/c;

    iget-object v3, v15, Lq/d;->L:Lq/c;

    iget v1, v15, Lq/d;->Z:I

    iget v0, v15, Lq/d;->c0:I

    aget v18, v34, v11

    iget v2, v15, Lq/d;->e0:F

    aget v8, v32, v10

    move/from16 v19, v2

    const/4 v2, 0x3

    if-ne v8, v2, :cond_53

    move/from16 v20, v11

    goto :goto_31

    :cond_53
    move/from16 v20, v10

    :goto_31
    iget v8, v15, Lq/d;->x:I

    move/from16 v24, v8

    iget v8, v15, Lq/d;->y:I

    move/from16 v25, v8

    iget v8, v15, Lq/d;->z:F

    move/from16 v26, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v1

    move-object/from16 v1, p1

    move v8, v2

    const/4 v2, 0x0

    move-object/from16 v23, v3

    move/from16 v3, v28

    move-object/from16 v28, v4

    move/from16 v4, v29

    move/from16 v8, v17

    move/from16 v9, v16

    move-object/from16 v10, v28

    move-object/from16 v11, v23

    move-object/from16 v60, v12

    move/from16 v12, v22

    move-object/from16 v61, v13

    move/from16 v13, v40

    move/from16 v14, v21

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v43

    move/from16 v18, v20

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v46

    move/from16 v22, v41

    move/from16 v23, v42

    invoke-virtual/range {v0 .. v27}, Lq/d;->e(Lo/d;ZZZZLo/j;Lo/j;IZLq/c;Lq/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_33

    :cond_54
    :goto_32
    move-object/from16 v60, v12

    move-object/from16 v61, v13

    :goto_33
    move-object/from16 v0, p0

    if-eqz v38, :cond_56

    iget v1, v0, Lq/d;->A:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_55

    iget v1, v0, Lq/d;->B:F

    .line 16
    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v3

    .line 17
    iget-object v4, v3, Lo/c;->d:Lo/b;

    move-object/from16 v5, v60

    invoke-interface {v4, v5, v2}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    move-object/from16 v4, v61

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v4, v6}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    move-object/from16 v7, v58

    invoke-interface {v2, v7, v1}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    neg-float v1, v1

    move-object/from16 v8, v59

    invoke-interface {v2, v8, v1}, Lo/b;->c(Lo/j;F)V

    move-object/from16 v1, p1

    .line 18
    invoke-virtual {v1, v3}, Lo/d;->c(Lo/c;)V

    goto :goto_34

    :cond_55
    move-object/from16 v1, p1

    move-object/from16 v7, v58

    move-object/from16 v8, v59

    move-object/from16 v5, v60

    move-object/from16 v4, v61

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, v0, Lq/d;->B:F

    .line 19
    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v9

    .line 20
    iget-object v10, v9, Lo/c;->d:Lo/b;

    invoke-interface {v10, v7, v2}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v9, Lo/c;->d:Lo/b;

    invoke-interface {v2, v8, v6}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v9, Lo/c;->d:Lo/b;

    invoke-interface {v2, v5, v3}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v9, Lo/c;->d:Lo/b;

    neg-float v3, v3

    invoke-interface {v2, v4, v3}, Lo/b;->c(Lo/j;F)V

    .line 21
    invoke-virtual {v1, v9}, Lo/d;->c(Lo/c;)V

    goto :goto_34

    :cond_56
    move-object/from16 v1, p1

    .line 22
    :goto_34
    invoke-virtual/range {v39 .. v39}, Lq/c;->h()Z

    move-result v2

    if-eqz v2, :cond_57

    move-object/from16 v2, v39

    .line 23
    iget-object v3, v2, Lq/c;->f:Lq/c;

    .line 24
    iget-object v3, v3, Lq/c;->d:Lq/d;

    iget v4, v0, Lq/d;->D:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lq/c;->e()I

    move-result v2

    const/4 v5, 0x2

    .line 26
    invoke-virtual {v0, v5}, Lq/d;->j(I)Lq/c;

    move-result-object v6

    invoke-virtual {v1, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lq/d;->j(I)Lq/c;

    move-result-object v8

    invoke-virtual {v1, v8}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lq/d;->j(I)Lq/c;

    move-result-object v10

    invoke-virtual {v1, v10}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Lq/d;->j(I)Lq/c;

    move-result-object v12

    invoke-virtual {v1, v12}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v12

    invoke-virtual {v3, v5}, Lq/d;->j(I)Lq/c;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v5

    invoke-virtual {v3, v7}, Lq/d;->j(I)Lq/c;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v7

    invoke-virtual {v3, v9}, Lq/d;->j(I)Lq/c;

    move-result-object v9

    invoke-virtual {v1, v9}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v9

    invoke-virtual {v3, v11}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    .line 27
    iget-object v5, v11, Lo/c;->d:Lo/b;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface {v5, v7, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v5, v11, Lo/c;->d:Lo/b;

    invoke-interface {v5, v3, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v3, v11, Lo/c;->d:Lo/b;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-interface {v3, v8, v5}, Lo/b;->c(Lo/j;F)V

    iget-object v3, v11, Lo/c;->d:Lo/b;

    invoke-interface {v3, v12, v5}, Lo/b;->c(Lo/j;F)V

    neg-float v3, v4

    iput v3, v11, Lo/c;->b:F

    .line 28
    invoke-virtual {v1, v11}, Lo/d;->c(Lo/c;)V

    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    .line 29
    iget-object v7, v3, Lo/c;->d:Lo/b;

    invoke-interface {v7, v2, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    move-object/from16 v7, v17

    invoke-interface {v2, v7, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    invoke-interface {v2, v6, v5}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v3, Lo/c;->d:Lo/b;

    move-object/from16 v6, p2

    invoke-interface {v2, v6, v5}, Lo/b;->c(Lo/j;F)V

    neg-float v2, v4

    iput v2, v3, Lo/c;->b:F

    .line 30
    invoke-virtual {v1, v3}, Lo/d;->c(Lo/c;)V

    :cond_57
    const/4 v1, 0x0

    iput-boolean v1, v0, Lq/d;->k:Z

    iput-boolean v1, v0, Lq/d;->l:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lq/d;->g0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Lo/d;ZZZZLo/j;Lo/j;IZLq/c;Lq/c;IIIIFZZZZZIIIIFZ)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v9

    invoke-virtual {v10, v14}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v8

    .line 1
    iget-object v6, v13, Lq/c;->f:Lq/c;

    .line 2
    invoke-virtual {v10, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v7

    .line 3
    iget-object v6, v14, Lq/c;->f:Lq/c;

    .line 4
    invoke-virtual {v10, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Lq/c;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Lq/c;->h()Z

    move-result v17

    iget-object v12, v0, Lq/d;->P:Lq/c;

    invoke-virtual {v12}, Lq/c;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    if-eqz p8, :cond_5f

    const/4 v11, 0x1

    move-object/from16 v19, v6

    add-int/lit8 v6, p8, -0x1

    if-eqz v6, :cond_3

    const/4 v11, 0x1

    if-eq v6, v11, :cond_3

    const/4 v11, 0x2

    if-eq v6, v11, :cond_4

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-eq v14, v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    iget v11, v0, Lq/d;->h:I

    move/from16 v21, v6

    const/4 v6, -0x1

    if-eq v11, v6, :cond_5

    if-eqz p2, :cond_5

    iput v6, v0, Lq/d;->h:I

    move/from16 p13, v11

    const/16 v21, 0x0

    :cond_5
    iget v11, v0, Lq/d;->i:I

    if-eq v11, v6, :cond_6

    if-nez p2, :cond_6

    iput v6, v0, Lq/d;->i:I

    const/16 v21, 0x0

    goto :goto_3

    :cond_6
    move/from16 v11, p13

    :goto_3
    iget v6, v0, Lq/d;->g0:I

    move/from16 p13, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_7

    const/4 v6, 0x0

    const/16 v21, 0x0

    goto :goto_4

    :cond_7
    move/from16 v6, p13

    :goto_4
    if-eqz p27, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v12, :cond_9

    move/from16 v11, p12

    invoke-virtual {v10, v9, v11}, Lo/d;->d(Lo/j;I)V

    :cond_8
    move/from16 v23, v12

    const/16 v12, 0x8

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v11

    move/from16 v23, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, Lo/d;->e(Lo/j;Lo/j;II)V

    goto :goto_5

    :cond_a
    move/from16 v23, v12

    move v12, v11

    :goto_5
    if-nez v21, :cond_e

    if-eqz p9, :cond_c

    const/4 v5, 0x3

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v9, v11, v5}, Lo/d;->e(Lo/j;Lo/j;II)V

    if-lez v15, :cond_b

    invoke-virtual {v10, v8, v9, v15, v12}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_b
    const v5, 0x7fffffff

    if-ge v1, v5, :cond_d

    invoke-virtual {v10, v8, v9, v1, v12}, Lo/d;->g(Lo/j;Lo/j;II)V

    goto :goto_6

    :cond_c
    invoke-virtual {v10, v8, v9, v6, v12}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_d
    :goto_6
    move/from16 v11, p5

    move/from16 v24, v2

    :goto_7
    move v12, v3

    goto/16 :goto_b

    :cond_e
    const/4 v1, 0x2

    if-eq v2, v1, :cond_11

    if-nez p17, :cond_11

    const/4 v1, 0x1

    if-eq v14, v1, :cond_f

    if-nez v14, :cond_11

    :cond_f
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_10

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_10
    const/16 v5, 0x8

    invoke-virtual {v10, v8, v9, v1, v5}, Lo/d;->e(Lo/j;Lo/j;II)V

    move/from16 v11, p5

    move/from16 v24, v2

    move v12, v3

    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_11
    const/4 v1, -0x2

    if-ne v3, v1, :cond_12

    move v3, v6

    :cond_12
    if-ne v4, v1, :cond_13

    move v4, v6

    :cond_13
    if-lez v6, :cond_14

    const/4 v1, 0x1

    if-eq v14, v1, :cond_14

    const/4 v6, 0x0

    :cond_14
    const/16 v1, 0x8

    if-lez v3, :cond_15

    invoke-virtual {v10, v8, v9, v3, v1}, Lo/d;->f(Lo/j;Lo/j;II)V

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_15
    const/4 v11, 0x1

    if-lez v4, :cond_17

    if-eqz p3, :cond_16

    if-ne v14, v11, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v10, v8, v9, v4, v1}, Lo/d;->g(Lo/j;Lo/j;II)V

    :goto_8
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_17
    if-ne v14, v11, :cond_19

    if-eqz p3, :cond_18

    invoke-virtual {v10, v8, v9, v6, v1}, Lo/d;->e(Lo/j;Lo/j;II)V

    const/4 v12, 0x5

    goto :goto_6

    :cond_18
    const/4 v12, 0x5

    invoke-virtual {v10, v8, v9, v6, v12}, Lo/d;->e(Lo/j;Lo/j;II)V

    invoke-virtual {v10, v8, v9, v6, v1}, Lo/d;->g(Lo/j;Lo/j;II)V

    goto :goto_6

    :cond_19
    const/4 v1, 0x2

    const/4 v12, 0x5

    if-ne v14, v1, :cond_1d

    iget v6, v13, Lq/c;->e:I

    const/4 v11, 0x3

    if-eq v6, v11, :cond_1a

    if-ne v6, v12, :cond_1b

    :cond_1a
    const/4 v11, 0x4

    goto :goto_9

    :cond_1b
    iget-object v6, v0, Lq/d;->T:Lq/d;

    invoke-virtual {v6, v1}, Lq/d;->j(I)Lq/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v1

    iget-object v6, v0, Lq/d;->T:Lq/d;

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Lq/d;->j(I)Lq/c;

    move-result-object v6

    invoke-virtual {v10, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6

    goto :goto_a

    :goto_9
    iget-object v1, v0, Lq/d;->T:Lq/d;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lq/d;->j(I)Lq/c;

    move-result-object v1

    invoke-virtual {v10, v1}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v1

    iget-object v12, v0, Lq/d;->T:Lq/d;

    const/4 v6, 0x5

    invoke-virtual {v12, v6}, Lq/d;->j(I)Lq/c;

    move-result-object v12

    invoke-virtual {v10, v12}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v12

    .line 5
    iget-object v11, v12, Lo/c;->d:Lo/b;

    move/from16 v24, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v11, v8, v2}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v12, Lo/c;->d:Lo/b;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-interface {v2, v9, v11}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v12, Lo/c;->d:Lo/b;

    invoke-interface {v2, v6, v5}, Lo/b;->c(Lo/j;F)V

    iget-object v2, v12, Lo/c;->d:Lo/b;

    neg-float v5, v5

    invoke-interface {v2, v1, v5}, Lo/b;->c(Lo/j;F)V

    .line 6
    invoke-virtual {v10, v12}, Lo/d;->c(Lo/c;)V

    if-eqz p3, :cond_1c

    const/16 v21, 0x0

    :cond_1c
    move/from16 v11, p5

    goto/16 :goto_7

    :cond_1d
    move/from16 v24, v2

    move v12, v3

    const/4 v11, 0x1

    :goto_b
    if-eqz p27, :cond_5a

    if-eqz p19, :cond_1e

    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v1, v24

    const/4 v5, 0x2

    const/16 v27, 0x1

    goto/16 :goto_2b

    :cond_1e
    if-nez v16, :cond_1f

    if-nez v17, :cond_1f

    if-nez v23, :cond_1f

    move-object/from16 v15, p11

    move-object v3, v8

    move/from16 p5, v11

    move-object/from16 v1, v19

    :goto_c
    const/4 v4, 0x5

    goto/16 :goto_28

    :cond_1f
    if-eqz v16, :cond_21

    if-nez v17, :cond_21

    iget-object v1, v13, Lq/c;->f:Lq/c;

    iget-object v1, v1, Lq/c;->d:Lq/d;

    if-eqz p3, :cond_20

    instance-of v1, v1, Lq/a;

    if-eqz v1, :cond_20

    const/16 v1, 0x8

    goto :goto_d

    :cond_20
    const/4 v1, 0x5

    :goto_d
    move/from16 v18, p3

    move-object/from16 v15, p11

    move-object v3, v8

    move/from16 p5, v11

    move v11, v1

    move-object/from16 v1, v19

    goto/16 :goto_29

    :cond_21
    if-nez v16, :cond_23

    if-eqz v17, :cond_23

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v19

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, Lo/d;->e(Lo/j;Lo/j;II)V

    if-eqz p3, :cond_22

    move-object/from16 v5, p6

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v10, v9, v5, v1, v2}, Lo/d;->f(Lo/j;Lo/j;II)V

    move-object/from16 v15, p11

    move v4, v2

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto/16 :goto_28

    :cond_22
    move-object/from16 v15, p11

    move-object v1, v6

    move-object v3, v8

    move/from16 p5, v11

    goto :goto_c

    :cond_23
    move-object/from16 v5, p6

    move-object/from16 v6, v19

    const/4 v3, 0x1

    if-eqz v16, :cond_22

    if-eqz v17, :cond_22

    iget-object v1, v13, Lq/c;->f:Lq/c;

    iget-object v2, v1, Lq/c;->d:Lq/d;

    move-object/from16 v1, p11

    iget-object v3, v1, Lq/c;->f:Lq/c;

    iget-object v3, v3, Lq/c;->d:Lq/d;

    iget-object v13, v0, Lq/d;->T:Lq/d;

    const/16 v16, 0x6

    if-eqz v21, :cond_38

    if-nez v14, :cond_28

    if-nez v4, :cond_25

    if-nez v12, :cond_25

    iget-boolean v4, v7, Lo/j;->f:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v6, Lo/j;->f:Z

    if-eqz v4, :cond_24

    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v7, v2, v3}, Lo/d;->e(Lo/j;Lo/j;II)V

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v8, v6, v1, v3}, Lo/d;->e(Lo/j;Lo/j;II)V

    return-void

    :cond_24
    const/16 p2, 0x8

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    goto :goto_e

    :cond_25
    const/16 p2, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_e
    instance-of v4, v2, Lq/a;

    if-nez v4, :cond_27

    instance-of v4, v3, Lq/a;

    if-eqz v4, :cond_26

    goto :goto_10

    :cond_26
    move/from16 v4, p2

    move/from16 v22, v18

    move/from16 v23, v19

    const/4 v15, 0x1

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v17, v14

    :goto_f
    move-object/from16 v14, p7

    goto/16 :goto_1b

    :cond_27
    :goto_10
    move/from16 v4, p2

    move/from16 v17, v14

    move/from16 v22, v18

    move/from16 v23, v19

    const/4 v15, 0x1

    const/16 v19, 0x4

    move-object/from16 v14, p7

    move/from16 v18, v16

    goto/16 :goto_1b

    :cond_28
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2b

    instance-of v4, v2, Lq/a;

    if-nez v4, :cond_2a

    instance-of v4, v3, Lq/a;

    if-eqz v4, :cond_29

    goto :goto_12

    :cond_29
    move/from16 v17, v14

    move/from16 v18, v16

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v19, 0x5

    :goto_11
    const/16 v20, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    goto :goto_f

    :cond_2a
    :goto_12
    move/from16 v17, v14

    move/from16 v18, v16

    const/4 v4, 0x5

    :goto_13
    const/4 v15, 0x1

    const/16 v19, 0x4

    goto :goto_11

    :cond_2b
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2c

    move/from16 v17, v14

    move/from16 v18, v16

    const/16 v4, 0x8

    goto :goto_13

    :cond_2c
    const/4 v15, 0x3

    if-ne v14, v15, :cond_37

    iget v15, v0, Lq/d;->A:I

    move/from16 v17, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2f

    move-object/from16 v14, p7

    const/16 v4, 0x8

    const/4 v15, 0x1

    if-eqz p20, :cond_2e

    if-eqz p3, :cond_2d

    const/16 v18, 0x5

    :goto_14
    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    goto/16 :goto_1b

    :cond_2d
    const/16 v18, 0x4

    goto :goto_14

    :cond_2e
    const/16 v18, 0x8

    goto :goto_14

    :cond_2f
    if-eqz p17, :cond_32

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_31

    const/4 v15, 0x1

    if-ne v14, v15, :cond_30

    goto :goto_15

    :cond_30
    const/16 v4, 0x8

    const/4 v14, 0x5

    goto :goto_16

    :cond_31
    const/4 v15, 0x1

    :goto_15
    const/4 v4, 0x5

    const/4 v14, 0x4

    :goto_16
    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v18, v16

    goto/16 :goto_f

    :cond_32
    const/4 v15, 0x1

    if-lez v4, :cond_33

    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v18, v16

    const/4 v4, 0x5

    const/16 v19, 0x5

    goto/16 :goto_1b

    :cond_33
    if-nez v4, :cond_36

    if-nez v12, :cond_36

    if-nez p20, :cond_34

    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v18, v16

    const/4 v4, 0x5

    const/16 v19, 0x8

    goto/16 :goto_1b

    :cond_34
    if-eq v2, v13, :cond_35

    if-eq v3, v13, :cond_35

    const/4 v4, 0x4

    goto :goto_17

    :cond_35
    const/4 v4, 0x5

    :goto_17
    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v18, v16

    :goto_18
    const/16 v19, 0x4

    goto/16 :goto_1b

    :cond_36
    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v18, v16

    const/4 v4, 0x5

    goto :goto_18

    :cond_37
    move/from16 v17, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    move/from16 v18, v16

    const/4 v4, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_19
    const/16 v23, 0x0

    goto :goto_1b

    :cond_38
    move/from16 v17, v14

    const/4 v15, 0x1

    iget-boolean v4, v7, Lo/j;->f:Z

    if-eqz v4, :cond_3b

    iget-boolean v4, v6, Lo/j;->f:Z

    if-eqz v4, :cond_3b

    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v2

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v2

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    invoke-virtual/range {p17 .. p25}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    if-eqz p3, :cond_3a

    if-eqz v11, :cond_3a

    iget-object v2, v1, Lq/c;->f:Lq/c;

    if-eqz v2, :cond_39

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v11

    move-object/from16 v14, p7

    goto :goto_1a

    :cond_39
    move-object/from16 v14, p7

    const/4 v11, 0x0

    :goto_1a
    if-eq v6, v14, :cond_3a

    const/4 v1, 0x5

    invoke-virtual {v10, v14, v8, v11, v1}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_3a
    return-void

    :cond_3b
    move-object/from16 v14, p7

    move/from16 v20, v15

    move/from16 v22, v20

    move/from16 v18, v16

    const/4 v4, 0x5

    const/16 v19, 0x4

    goto :goto_19

    :goto_1b
    if-eqz v20, :cond_3c

    if-ne v7, v6, :cond_3c

    if-eq v2, v13, :cond_3c

    const/16 v20, 0x0

    const/16 v24, 0x0

    goto :goto_1c

    :cond_3c
    move/from16 v24, v20

    move/from16 v20, v15

    :goto_1c
    if-eqz v22, :cond_3e

    if-nez v21, :cond_3d

    if-nez p18, :cond_3d

    if-nez p20, :cond_3d

    if-ne v7, v5, :cond_3d

    if-ne v6, v14, :cond_3d

    const/16 v18, 0x0

    const/16 v20, 0x8

    const/16 v22, 0x8

    const/16 v25, 0x0

    goto :goto_1d

    :cond_3d
    move/from16 v22, v18

    move/from16 v25, v20

    move/from16 v18, p3

    move/from16 v20, v4

    :goto_1d
    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v4

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v26

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    const/16 v27, 0x1

    move-object v11, v3

    move-object v3, v7

    move/from16 p9, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    move-object v12, v7

    move-object v7, v8

    move-object/from16 p15, v13

    move-object v13, v8

    move/from16 v8, v26

    move-object/from16 v26, v13

    move-object v13, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    move/from16 v4, v20

    move/from16 v20, v25

    goto :goto_1e

    :cond_3e
    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v26, v8

    move/from16 p5, v11

    move/from16 p9, v12

    move-object/from16 p15, v13

    move/from16 v27, v15

    move-object v15, v1

    move-object v11, v3

    move-object v12, v7

    move-object v13, v9

    move/from16 v18, p3

    :goto_1e
    iget v1, v0, Lq/d;->g0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_41

    .line 7
    iget-object v1, v15, Lq/c;->a:Ljava/util/HashSet;

    if-nez v1, :cond_3f

    goto :goto_1f

    :cond_3f
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_40

    goto :goto_20

    :cond_40
    :goto_1f
    return-void

    :cond_41
    :goto_20
    move-object/from16 v1, p2

    if-eqz v24, :cond_44

    if-eqz v18, :cond_43

    if-eq v12, v1, :cond_43

    if-nez v21, :cond_43

    .line 8
    instance-of v2, v14, Lq/a;

    if-nez v2, :cond_42

    instance-of v2, v11, Lq/a;

    if-eqz v2, :cond_43

    :cond_42
    move/from16 v4, v16

    :cond_43
    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v2

    invoke-virtual {v10, v13, v12, v2, v4}, Lo/d;->f(Lo/j;Lo/j;II)V

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v3, v26

    invoke-virtual {v10, v3, v1, v2, v4}, Lo/d;->g(Lo/j;Lo/j;II)V

    goto :goto_21

    :cond_44
    move-object/from16 v3, v26

    :goto_21
    if-eqz v18, :cond_45

    if-eqz p21, :cond_45

    instance-of v2, v14, Lq/a;

    if-nez v2, :cond_45

    instance-of v2, v11, Lq/a;

    if-nez v2, :cond_45

    move-object/from16 v2, p15

    if-eq v11, v2, :cond_46

    move/from16 v4, v16

    move v5, v4

    move/from16 v20, v27

    goto :goto_22

    :cond_45
    move-object/from16 v2, p15

    :cond_46
    move/from16 v5, v19

    :goto_22
    if-eqz v20, :cond_53

    if-eqz v23, :cond_4f

    if-eqz p20, :cond_47

    if-eqz p4, :cond_4f

    :cond_47
    if-eq v14, v2, :cond_49

    if-ne v11, v2, :cond_48

    goto :goto_23

    :cond_48
    move/from16 v16, v5

    :cond_49
    :goto_23
    instance-of v6, v14, Lq/h;

    if-nez v6, :cond_4a

    instance-of v6, v11, Lq/h;

    if-eqz v6, :cond_4b

    :cond_4a
    const/16 v16, 0x5

    :cond_4b
    instance-of v6, v14, Lq/a;

    if-nez v6, :cond_4c

    instance-of v6, v11, Lq/a;

    if-eqz v6, :cond_4d

    :cond_4c
    const/16 v16, 0x5

    :cond_4d
    if-eqz p20, :cond_4e

    const/4 v6, 0x5

    goto :goto_24

    :cond_4e
    move/from16 v6, v16

    :goto_24
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_4f
    if-eqz v18, :cond_52

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p17, :cond_51

    if-nez p20, :cond_51

    if-eq v14, v2, :cond_50

    if-ne v11, v2, :cond_51

    :cond_50
    const/4 v11, 0x4

    goto :goto_25

    :cond_51
    move v11, v4

    goto :goto_25

    :cond_52
    move v11, v5

    :goto_25
    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v2

    invoke-virtual {v10, v13, v12, v2, v11}, Lo/d;->e(Lo/j;Lo/j;II)V

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v3, v1, v2, v11}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_53
    if-eqz v18, :cond_55

    move-object/from16 v2, p6

    move-object v4, v12

    if-ne v2, v4, :cond_54

    invoke-virtual/range {p10 .. p10}, Lq/c;->e()I

    move-result v5

    goto :goto_26

    :cond_54
    const/4 v5, 0x0

    :goto_26
    if-eq v4, v2, :cond_55

    const/4 v4, 0x5

    invoke-virtual {v10, v13, v2, v5, v4}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_55
    if-eqz v18, :cond_56

    if-eqz v21, :cond_56

    if-nez p14, :cond_56

    if-nez p9, :cond_56

    if-eqz v21, :cond_57

    move/from16 v14, v17

    const/4 v2, 0x3

    if-ne v14, v2, :cond_57

    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-virtual {v10, v3, v13, v2, v4}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_56
    const/4 v4, 0x5

    goto :goto_27

    :cond_57
    const/4 v2, 0x0

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v13, v2, v4}, Lo/d;->f(Lo/j;Lo/j;II)V

    :goto_27
    move v11, v4

    goto :goto_29

    :goto_28
    move/from16 v18, p3

    goto :goto_27

    :goto_29
    if-eqz v18, :cond_59

    if-eqz p5, :cond_59

    iget-object v2, v15, Lq/c;->f:Lq/c;

    if-eqz v2, :cond_58

    invoke-virtual/range {p11 .. p11}, Lq/c;->e()I

    move-result v2

    move-object/from16 v4, p7

    goto :goto_2a

    :cond_58
    move-object/from16 v4, p7

    const/4 v2, 0x0

    :goto_2a
    if-eq v1, v4, :cond_59

    invoke-virtual {v10, v4, v3, v2, v11}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_59
    return-void

    :cond_5a
    move-object/from16 v2, p6

    move-object/from16 v4, p7

    move-object v3, v8

    move-object v13, v9

    move/from16 p5, v11

    move/from16 v1, v24

    const/16 v27, 0x1

    const/4 v5, 0x2

    :goto_2b
    if-ge v1, v5, :cond_5e

    if-eqz p3, :cond_5e

    if-eqz p5, :cond_5e

    const/4 v1, 0x0

    const/16 v5, 0x8

    invoke-virtual {v10, v13, v2, v1, v5}, Lo/d;->f(Lo/j;Lo/j;II)V

    iget-object v1, v0, Lq/d;->M:Lq/c;

    if-nez p2, :cond_5c

    iget-object v2, v1, Lq/c;->f:Lq/c;

    if-nez v2, :cond_5b

    goto :goto_2c

    :cond_5b
    const/4 v11, 0x0

    goto :goto_2d

    :cond_5c
    :goto_2c
    move/from16 v11, v27

    :goto_2d
    if-nez p2, :cond_5d

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_5d

    iget-object v1, v1, Lq/c;->d:Lq/d;

    iget v2, v1, Lq/d;->W:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5e

    iget-object v1, v1, Lq/d;->p0:[I

    const/4 v2, 0x0

    aget v5, v1, v2

    const/4 v2, 0x3

    if-ne v5, v2, :cond_5e

    aget v1, v1, v27

    if-ne v1, v2, :cond_5e

    :goto_2e
    const/4 v1, 0x0

    const/16 v2, 0x8

    goto :goto_2f

    :cond_5d
    if-eqz v11, :cond_5e

    goto :goto_2e

    :goto_2f
    invoke-virtual {v10, v4, v3, v1, v2}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_5e
    return-void

    :cond_5f
    const/4 v1, 0x0

    throw v1
.end method

.method public final f(ILq/d;II)V
    .locals 10

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v7, 0x0

    .line 11
    if-ne p1, v0, :cond_c

    .line 12
    .line 13
    if-ne p3, v0, :cond_8

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lq/d;->j(I)Lq/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v5}, Lq/d;->j(I)Lq/c;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p0, v4}, Lq/d;->j(I)Lq/c;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p0, v6}, Lq/d;->j(I)Lq/c;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const/4 v9, 0x1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lq/c;->h()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    :cond_0
    if-eqz p3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p3}, Lq/c;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    :cond_1
    move p1, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v3, p2, v3, v7}, Lq/d;->f(ILq/d;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v5, p2, v5, v7}, Lq/d;->f(ILq/d;II)V

    .line 54
    .line 55
    .line 56
    move p1, v9

    .line 57
    :goto_0
    if-eqz p4, :cond_3

    .line 58
    .line 59
    invoke-virtual {p4}, Lq/c;->h()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_4

    .line 64
    .line 65
    :cond_3
    if-eqz v8, :cond_5

    .line 66
    .line 67
    invoke-virtual {v8}, Lq/c;->h()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    :cond_4
    move v9, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p0, v4, p2, v4, v7}, Lq/d;->f(ILq/d;II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v6, p2, v6, v7}, Lq/d;->f(ILq/d;II)V

    .line 79
    .line 80
    .line 81
    :goto_1
    if-eqz p1, :cond_6

    .line 82
    .line 83
    if-eqz v9, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lq/d;->j(I)Lq/c;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, v0}, Lq/d;->j(I)Lq/c;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    if-eqz p1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lq/d;->j(I)Lq/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, v2}, Lq/d;->j(I)Lq/c;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    if-eqz v9, :cond_1c

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lq/d;->j(I)Lq/c;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, v1}, Lq/d;->j(I)Lq/c;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    if-eq p3, v3, :cond_b

    .line 117
    .line 118
    if-ne p3, v5, :cond_9

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_9
    if-eq p3, v4, :cond_a

    .line 122
    .line 123
    if-ne p3, v6, :cond_1c

    .line 124
    .line 125
    :cond_a
    invoke-virtual {p0, v4, p2, p3, v7}, Lq/d;->f(ILq/d;II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v6, p2, p3, v7}, Lq/d;->f(ILq/d;II)V

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-virtual {p0, v0}, Lq/d;->j(I)Lq/c;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_3
    invoke-virtual {p2, p3}, Lq/d;->j(I)Lq/c;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    :goto_4
    invoke-virtual {p1, p2, v7}, Lq/c;->a(Lq/c;I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_b
    :goto_5
    invoke-virtual {p0, v3, p2, p3, v7}, Lq/d;->f(ILq/d;II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v5, p2, p3, v7}, Lq/d;->f(ILq/d;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_c
    if-ne p1, v2, :cond_e

    .line 152
    .line 153
    if-eq p3, v3, :cond_d

    .line 154
    .line 155
    if-ne p3, v5, :cond_e

    .line 156
    .line 157
    :cond_d
    invoke-virtual {p0, v3}, Lq/d;->j(I)Lq/c;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, p3}, Lq/d;->j(I)Lq/c;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p0, v5}, Lq/d;->j(I)Lq/c;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-virtual {p1, p2, v7}, Lq/c;->a(Lq/c;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p2, v7}, Lq/c;->a(Lq/c;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2}, Lq/d;->j(I)Lq/c;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    goto :goto_4

    .line 180
    :cond_e
    if-ne p1, v1, :cond_10

    .line 181
    .line 182
    if-eq p3, v4, :cond_f

    .line 183
    .line 184
    if-ne p3, v6, :cond_10

    .line 185
    .line 186
    :cond_f
    invoke-virtual {p2, p3}, Lq/d;->j(I)Lq/c;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, v4}, Lq/d;->j(I)Lq/c;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p2, p1, v7}, Lq/c;->a(Lq/c;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v6}, Lq/d;->j(I)Lq/c;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p2, p1, v7}, Lq/c;->a(Lq/c;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v1}, Lq/d;->j(I)Lq/c;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p2, p1, v7}, Lq/c;->a(Lq/c;I)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_10
    if-ne p1, v2, :cond_11

    .line 214
    .line 215
    if-ne p3, v2, :cond_11

    .line 216
    .line 217
    invoke-virtual {p0, v3}, Lq/d;->j(I)Lq/c;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p2, v3}, Lq/d;->j(I)Lq/c;

    .line 222
    .line 223
    .line 224
    move-result-object p4

    .line 225
    invoke-virtual {p1, p4, v7}, Lq/c;->a(Lq/c;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v5}, Lq/d;->j(I)Lq/c;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p2, v5}, Lq/d;->j(I)Lq/c;

    .line 233
    .line 234
    .line 235
    move-result-object p4

    .line 236
    invoke-virtual {p1, p4, v7}, Lq/c;->a(Lq/c;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v2}, Lq/d;->j(I)Lq/c;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    goto :goto_3

    .line 244
    :cond_11
    if-ne p1, v1, :cond_12

    .line 245
    .line 246
    if-ne p3, v1, :cond_12

    .line 247
    .line 248
    invoke-virtual {p0, v4}, Lq/d;->j(I)Lq/c;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p2, v4}, Lq/d;->j(I)Lq/c;

    .line 253
    .line 254
    .line 255
    move-result-object p4

    .line 256
    invoke-virtual {p1, p4, v7}, Lq/c;->a(Lq/c;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v6}, Lq/d;->j(I)Lq/c;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p2, v6}, Lq/d;->j(I)Lq/c;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    invoke-virtual {p1, p4, v7}, Lq/c;->a(Lq/c;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v1}, Lq/d;->j(I)Lq/c;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_12
    invoke-virtual {p0, p1}, Lq/d;->j(I)Lq/c;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {p2, p3}, Lq/d;->j(I)Lq/c;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-virtual {v7, p2}, Lq/c;->i(Lq/c;)Z

    .line 285
    .line 286
    .line 287
    move-result p3

    .line 288
    if-eqz p3, :cond_1c

    .line 289
    .line 290
    const/4 p3, 0x6

    .line 291
    if-ne p1, p3, :cond_14

    .line 292
    .line 293
    invoke-virtual {p0, v4}, Lq/d;->j(I)Lq/c;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p0, v6}, Lq/d;->j(I)Lq/c;

    .line 298
    .line 299
    .line 300
    move-result-object p3

    .line 301
    if-eqz p1, :cond_13

    .line 302
    .line 303
    invoke-virtual {p1}, Lq/c;->j()V

    .line 304
    .line 305
    .line 306
    :cond_13
    if-eqz p3, :cond_1b

    .line 307
    .line 308
    invoke-virtual {p3}, Lq/c;->j()V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_14
    if-eq p1, v4, :cond_18

    .line 313
    .line 314
    if-ne p1, v6, :cond_15

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_15
    if-eq p1, v3, :cond_16

    .line 318
    .line 319
    if-ne p1, v5, :cond_1b

    .line 320
    .line 321
    :cond_16
    invoke-virtual {p0, v0}, Lq/d;->j(I)Lq/c;

    .line 322
    .line 323
    .line 324
    move-result-object p3

    .line 325
    iget-object v0, p3, Lq/c;->f:Lq/c;

    .line 326
    .line 327
    if-eq v0, p2, :cond_17

    .line 328
    .line 329
    invoke-virtual {p3}, Lq/c;->j()V

    .line 330
    .line 331
    .line 332
    :cond_17
    invoke-virtual {p0, p1}, Lq/d;->j(I)Lq/c;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p1}, Lq/c;->f()Lq/c;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p0, v2}, Lq/d;->j(I)Lq/c;

    .line 341
    .line 342
    .line 343
    move-result-object p3

    .line 344
    invoke-virtual {p3}, Lq/c;->h()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_1b

    .line 349
    .line 350
    :goto_6
    invoke-virtual {p1}, Lq/c;->j()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p3}, Lq/c;->j()V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_18
    :goto_7
    invoke-virtual {p0, p3}, Lq/d;->j(I)Lq/c;

    .line 358
    .line 359
    .line 360
    move-result-object p3

    .line 361
    if-eqz p3, :cond_19

    .line 362
    .line 363
    invoke-virtual {p3}, Lq/c;->j()V

    .line 364
    .line 365
    .line 366
    :cond_19
    invoke-virtual {p0, v0}, Lq/d;->j(I)Lq/c;

    .line 367
    .line 368
    .line 369
    move-result-object p3

    .line 370
    iget-object v0, p3, Lq/c;->f:Lq/c;

    .line 371
    .line 372
    if-eq v0, p2, :cond_1a

    .line 373
    .line 374
    invoke-virtual {p3}, Lq/c;->j()V

    .line 375
    .line 376
    .line 377
    :cond_1a
    invoke-virtual {p0, p1}, Lq/d;->j(I)Lq/c;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lq/c;->f()Lq/c;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p0, v1}, Lq/d;->j(I)Lq/c;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    invoke-virtual {p3}, Lq/c;->h()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_1b

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_1b
    :goto_8
    invoke-virtual {v7, p2, p4}, Lq/c;->a(Lq/c;I)V

    .line 397
    .line 398
    .line 399
    :cond_1c
    :goto_9
    return-void
.end method

.method public final g(Lq/c;Lq/c;I)V
    .locals 1

    .line 1
    iget-object v0, p1, Lq/c;->d:Lq/d;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p2, Lq/c;->d:Lq/d;

    .line 6
    .line 7
    iget p1, p1, Lq/c;->e:I

    .line 8
    .line 9
    iget p2, p2, Lq/c;->e:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, p2, p3}, Lq/d;->f(ILq/d;II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final h(Lo/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/d;->I:Lq/c;

    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    iget-object v0, p0, Lq/d;->J:Lq/c;

    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    iget-object v0, p0, Lq/d;->K:Lq/c;

    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    iget-object v0, p0, Lq/d;->L:Lq/c;

    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    iget v0, p0, Lq/d;->a0:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lq/d;->M:Lq/c;

    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq/d;->d:Lr/k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lr/k;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lr/o;-><init>(Lq/d;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lr/o;->h:Lr/f;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    iput v2, v1, Lr/f;->e:I

    .line 14
    .line 15
    iget-object v1, v0, Lr/o;->i:Lr/f;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    iput v2, v1, Lr/f;->e:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, v0, Lr/o;->f:I

    .line 22
    .line 23
    iput-object v0, p0, Lq/d;->d:Lr/k;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lq/d;->e:Lr/m;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lr/m;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lr/o;-><init>(Lq/d;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lr/f;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lr/f;-><init>(Lr/o;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lr/m;->k:Lr/f;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v0, Lr/m;->l:Lr/a;

    .line 43
    .line 44
    iget-object v2, v0, Lr/o;->h:Lr/f;

    .line 45
    .line 46
    const/4 v3, 0x6

    .line 47
    iput v3, v2, Lr/f;->e:I

    .line 48
    .line 49
    iget-object v2, v0, Lr/o;->i:Lr/f;

    .line 50
    .line 51
    const/4 v3, 0x7

    .line 52
    iput v3, v2, Lr/f;->e:I

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    iput v2, v1, Lr/f;->e:I

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    iput v1, v0, Lr/o;->f:I

    .line 60
    .line 61
    iput-object v0, p0, Lq/d;->e:Lr/m;

    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public j(I)Lq/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lq/d;->O:Lq/c;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lq/d;->N:Lq/c;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lq/d;->P:Lq/c;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lq/d;->M:Lq/c;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lq/d;->L:Lq/c;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lq/d;->K:Lq/c;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lq/d;->J:Lq/c;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lq/d;->I:Lq/c;

    return-object p1

    :pswitch_8
    return-object v0

    :cond_0
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lq/d;->p0:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    aget p1, v0, v1

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    aget p1, v0, v2

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    return v1
.end method

.method public final l()I
    .locals 2

    .line 1
    iget v0, p0, Lq/d;->g0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lq/d;->V:I

    return v0
.end method

.method public final m(I)Lq/d;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lq/d;->K:Lq/c;

    iget-object v0, p1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lq/c;->d:Lq/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lq/d;->L:Lq/c;

    iget-object v0, p1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lq/c;->d:Lq/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(I)Lq/d;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    iget-object p1, p0, Lq/d;->I:Lq/c;

    iget-object v0, p1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lq/c;->d:Lq/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lq/d;->J:Lq/c;

    iget-object v0, p1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lq/c;->d:Lq/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lq/d;->j:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":{\n"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "    actualWidth:"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lq/d;->U:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "\n"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "    actualHeight:"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lq/d;->V:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "    actualLeft:"

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lq/d;->Y:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "    actualTop:"

    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v2, p0, Lq/d;->Z:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "left"

    .line 116
    .line 117
    iget-object v1, p0, Lq/d;->I:Lq/c;

    .line 118
    .line 119
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "top"

    .line 123
    .line 124
    iget-object v1, p0, Lq/d;->J:Lq/c;

    .line 125
    .line 126
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 127
    .line 128
    .line 129
    const-string v0, "right"

    .line 130
    .line 131
    iget-object v1, p0, Lq/d;->K:Lq/c;

    .line 132
    .line 133
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "bottom"

    .line 137
    .line 138
    iget-object v1, p0, Lq/d;->L:Lq/c;

    .line 139
    .line 140
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "baseline"

    .line 144
    .line 145
    iget-object v1, p0, Lq/d;->M:Lq/c;

    .line 146
    .line 147
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "centerX"

    .line 151
    .line 152
    iget-object v1, p0, Lq/d;->N:Lq/c;

    .line 153
    .line 154
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "centerY"

    .line 158
    .line 159
    iget-object v1, p0, Lq/d;->O:Lq/c;

    .line 160
    .line 161
    invoke-static {p1, v0, v1}, Lq/d;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lq/c;)V

    .line 162
    .line 163
    .line 164
    const-string v1, "    width"

    .line 165
    .line 166
    iget v2, p0, Lq/d;->U:I

    .line 167
    .line 168
    iget v3, p0, Lq/d;->b0:I

    .line 169
    .line 170
    iget-object v8, p0, Lq/d;->C:[I

    .line 171
    .line 172
    const/4 v9, 0x0

    .line 173
    aget v4, v8, v9

    .line 174
    .line 175
    iget v5, p0, Lq/d;->u:I

    .line 176
    .line 177
    iget v6, p0, Lq/d;->r:I

    .line 178
    .line 179
    iget v7, p0, Lq/d;->w:F

    .line 180
    .line 181
    iget-object v10, p0, Lq/d;->k0:[F

    .line 182
    .line 183
    aget v0, v10, v9

    .line 184
    .line 185
    move-object v0, p1

    .line 186
    invoke-static/range {v0 .. v7}, Lq/d;->p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 187
    .line 188
    .line 189
    const-string v1, "    height"

    .line 190
    .line 191
    iget v2, p0, Lq/d;->V:I

    .line 192
    .line 193
    iget v3, p0, Lq/d;->c0:I

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    aget v4, v8, v0

    .line 197
    .line 198
    iget v5, p0, Lq/d;->x:I

    .line 199
    .line 200
    iget v6, p0, Lq/d;->s:I

    .line 201
    .line 202
    iget v7, p0, Lq/d;->z:F

    .line 203
    .line 204
    aget v0, v10, v0

    .line 205
    .line 206
    move-object v0, p1

    .line 207
    invoke-static/range {v0 .. v7}, Lq/d;->p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 208
    .line 209
    .line 210
    iget v0, p0, Lq/d;->W:F

    .line 211
    .line 212
    iget v1, p0, Lq/d;->X:I

    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    cmpl-float v2, v0, v2

    .line 216
    .line 217
    if-nez v2, :cond_0

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_0
    const-string v2, "    dimensionRatio"

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, " :  ["

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v0, ","

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, ""

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v0, "],\n"

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :goto_0
    iget v0, p0, Lq/d;->d0:F

    .line 252
    .line 253
    const-string v1, "    horizontalBias"

    .line 254
    .line 255
    const/high16 v2, 0x3f000000    # 0.5f

    .line 256
    .line 257
    invoke-static {p1, v1, v0, v2}, Lq/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 258
    .line 259
    .line 260
    const-string v0, "    verticalBias"

    .line 261
    .line 262
    iget v1, p0, Lq/d;->e0:F

    .line 263
    .line 264
    invoke-static {p1, v0, v1, v2}, Lq/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 265
    .line 266
    .line 267
    const-string v0, "    horizontalChainStyle"

    .line 268
    .line 269
    iget v1, p0, Lq/d;->i0:I

    .line 270
    .line 271
    invoke-static {v1, v9, v0, p1}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "    verticalChainStyle"

    .line 275
    .line 276
    iget v1, p0, Lq/d;->j0:I

    .line 277
    .line 278
    invoke-static {v1, v9, v0, p1}, Lq/d;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 279
    .line 280
    .line 281
    const-string v0, "  }"

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public final r()I
    .locals 2

    .line 1
    iget v0, p0, Lq/d;->g0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lq/d;->U:I

    return v0
.end method

.method public final s()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lq/e;

    if-eqz v1, :cond_0

    check-cast v0, Lq/e;

    iget v0, v0, Lq/e;->x0:I

    iget v1, p0, Lq/d;->Y:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lq/d;->Y:I

    return v0
.end method

.method public final t()I
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->T:Lq/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lq/e;

    if-eqz v1, :cond_0

    check-cast v0, Lq/e;

    iget v0, v0, Lq/e;->y0:I

    iget v1, p0, Lq/d;->Z:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lq/d;->Z:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lq/d;->h0:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "id: "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lq/d;->h0:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, " "

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, "("

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lq/d;->Y:I

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", "

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lq/d;->Z:I

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ") - ("

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lq/d;->U:I

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " x "

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lq/d;->V:I

    .line 65
    .line 66
    const-string v2, ")"

    .line 67
    .line 68
    invoke-static {v1, v0, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public final u(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lq/d;->I:Lq/c;

    iget-object p1, p1, Lq/c;->f:Lq/c;

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v3, p0, Lq/d;->K:Lq/c;

    iget-object v3, v3, Lq/c;->f:Lq/c;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lq/d;->J:Lq/c;

    iget-object p1, p1, Lq/c;->f:Lq/c;

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iget-object v3, p0, Lq/d;->L:Lq/c;

    iget-object v3, v3, Lq/c;->f:Lq/c;

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    add-int/2addr p1, v3

    iget-object v3, p0, Lq/d;->M:Lq/c;

    iget-object v3, v3, Lq/c;->f:Lq/c;

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public final v(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lq/d;->I:Lq/c;

    .line 6
    .line 7
    iget-object v2, p1, Lq/c;->f:Lq/c;

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget-boolean v2, v2, Lq/c;->c:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lq/d;->K:Lq/c;

    .line 16
    .line 17
    iget-object v3, v2, Lq/c;->f:Lq/c;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iget-boolean v4, v3, Lq/c;->c:Z

    .line 22
    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {v3}, Lq/c;->d()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2}, Lq/c;->e()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sub-int/2addr v3, v2

    .line 34
    iget-object v2, p1, Lq/c;->f:Lq/c;

    .line 35
    .line 36
    invoke-virtual {v2}, Lq/c;->d()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1}, Lq/c;->e()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/2addr p1, v2

    .line 45
    sub-int/2addr v3, p1

    .line 46
    if-lt v3, p2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object p1, p0, Lq/d;->J:Lq/c;

    .line 52
    .line 53
    iget-object v2, p1, Lq/c;->f:Lq/c;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-boolean v2, v2, Lq/c;->c:Z

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lq/d;->L:Lq/c;

    .line 62
    .line 63
    iget-object v3, v2, Lq/c;->f:Lq/c;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iget-boolean v4, v3, Lq/c;->c:Z

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Lq/c;->d()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2}, Lq/c;->e()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    sub-int/2addr v3, v2

    .line 80
    iget-object v2, p1, Lq/c;->f:Lq/c;

    .line 81
    .line 82
    invoke-virtual {v2}, Lq/c;->d()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p1}, Lq/c;->e()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    add-int/2addr p1, v2

    .line 91
    sub-int/2addr v3, p1

    .line 92
    if-lt v3, p2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v0, v1

    .line 96
    :goto_1
    return v0

    .line 97
    :cond_3
    return v1
.end method

.method public final w(ILq/d;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq/d;->j(I)Lq/c;

    move-result-object p1

    invoke-virtual {p2, p3}, Lq/d;->j(I)Lq/c;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p4, p5, p3}, Lq/c;->b(Lq/c;IIZ)Z

    return-void
.end method

.method public final x(I)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lq/d;->Q:[Lq/c;

    aget-object v1, v0, p1

    iget-object v2, v1, Lq/c;->f:Lq/c;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq/c;->f:Lq/c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->I:Lq/c;

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lq/d;->K:Lq/c;

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq/d;->J:Lq/c;

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lq/d;->L:Lq/c;

    iget-object v1, v0, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
