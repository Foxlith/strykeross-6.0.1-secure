.class public final Lq/e;
.super Lq/l;
.source "SourceFile"


# instance fields
.field public A0:I

.field public B0:[Lq/b;

.field public C0:[Lq/b;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public final K0:Ljava/util/HashSet;

.field public final L0:Lr/b;

.field public final r0:Lv1/t;

.field public final s0:Lr/e;

.field public t0:I

.field public u0:Landroidx/constraintlayout/widget/e;

.field public v0:Z

.field public final w0:Lo/d;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lq/d;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lv1/t;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lv1/t;-><init>(Lq/e;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lq/e;->r0:Lv1/t;

    .line 17
    .line 18
    new-instance v0, Lr/e;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lr/e;->b:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Lr/e;->c:Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lr/e;->e:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lr/e;->f:Landroidx/constraintlayout/widget/e;

    .line 42
    .line 43
    new-instance v2, Lr/b;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lr/e;->g:Lr/b;

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lr/e;->h:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput-object p0, v0, Lr/e;->a:Lq/e;

    .line 58
    .line 59
    iput-object p0, v0, Lr/e;->d:Lq/e;

    .line 60
    .line 61
    iput-object v0, p0, Lq/e;->s0:Lr/e;

    .line 62
    .line 63
    iput-object v1, p0, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lq/e;->v0:Z

    .line 67
    .line 68
    new-instance v2, Lo/d;

    .line 69
    .line 70
    invoke-direct {v2}, Lo/d;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lq/e;->w0:Lo/d;

    .line 74
    .line 75
    iput v0, p0, Lq/e;->z0:I

    .line 76
    .line 77
    iput v0, p0, Lq/e;->A0:I

    .line 78
    .line 79
    const/4 v2, 0x4

    .line 80
    new-array v3, v2, [Lq/b;

    .line 81
    .line 82
    iput-object v3, p0, Lq/e;->B0:[Lq/b;

    .line 83
    .line 84
    new-array v2, v2, [Lq/b;

    .line 85
    .line 86
    iput-object v2, p0, Lq/e;->C0:[Lq/b;

    .line 87
    .line 88
    const/16 v2, 0x101

    .line 89
    .line 90
    iput v2, p0, Lq/e;->D0:I

    .line 91
    .line 92
    iput-boolean v0, p0, Lq/e;->E0:Z

    .line 93
    .line 94
    iput-boolean v0, p0, Lq/e;->F0:Z

    .line 95
    .line 96
    iput-object v1, p0, Lq/e;->G0:Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    iput-object v1, p0, Lq/e;->H0:Ljava/lang/ref/WeakReference;

    .line 99
    .line 100
    iput-object v1, p0, Lq/e;->I0:Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    iput-object v1, p0, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    new-instance v0, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lq/e;->K0:Ljava/util/HashSet;

    .line 110
    .line 111
    new-instance v0, Lr/b;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lq/e;->L0:Lr/b;

    .line 117
    .line 118
    return-void
.end method

.method public static W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lq/d;->g0:I

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_13

    .line 10
    .line 11
    instance-of v0, p0, Lq/h;

    .line 12
    .line 13
    if-nez v0, :cond_13

    .line 14
    .line 15
    instance-of v0, p0, Lq/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lq/d;->p0:[I

    .line 22
    .line 23
    aget v1, v0, v2

    .line 24
    .line 25
    iput v1, p2, Lr/b;->a:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aget v0, v0, v1

    .line 29
    .line 30
    iput v0, p2, Lr/b;->b:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lq/d;->r()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p2, Lr/b;->c:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lq/d;->l()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p2, Lr/b;->d:I

    .line 43
    .line 44
    iput-boolean v2, p2, Lr/b;->i:Z

    .line 45
    .line 46
    iput v2, p2, Lr/b;->j:I

    .line 47
    .line 48
    iget v0, p2, Lr/b;->a:I

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    if-ne v0, v3, :cond_2

    .line 52
    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v0, v2

    .line 56
    :goto_0
    iget v4, p2, Lr/b;->b:I

    .line 57
    .line 58
    if-ne v4, v3, :cond_3

    .line 59
    .line 60
    move v3, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v3, v2

    .line 63
    :goto_1
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget v5, p0, Lq/d;->W:F

    .line 67
    .line 68
    cmpl-float v5, v5, v4

    .line 69
    .line 70
    if-lez v5, :cond_4

    .line 71
    .line 72
    move v5, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v5, v2

    .line 75
    :goto_2
    if-eqz v3, :cond_5

    .line 76
    .line 77
    iget v6, p0, Lq/d;->W:F

    .line 78
    .line 79
    cmpl-float v4, v6, v4

    .line 80
    .line 81
    if-lez v4, :cond_5

    .line 82
    .line 83
    move v4, v1

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v4, v2

    .line 86
    :goto_3
    const/4 v6, 0x2

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lq/d;->u(I)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_7

    .line 94
    .line 95
    iget v7, p0, Lq/d;->r:I

    .line 96
    .line 97
    if-nez v7, :cond_7

    .line 98
    .line 99
    if-nez v5, :cond_7

    .line 100
    .line 101
    iput v6, p2, Lr/b;->a:I

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    iget v0, p0, Lq/d;->s:I

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    iput v1, p2, Lr/b;->a:I

    .line 110
    .line 111
    :cond_6
    move v0, v2

    .line 112
    :cond_7
    if-eqz v3, :cond_9

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Lq/d;->u(I)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_9

    .line 119
    .line 120
    iget v7, p0, Lq/d;->s:I

    .line 121
    .line 122
    if-nez v7, :cond_9

    .line 123
    .line 124
    if-nez v4, :cond_9

    .line 125
    .line 126
    iput v6, p2, Lr/b;->b:I

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    iget v3, p0, Lq/d;->r:I

    .line 131
    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    iput v1, p2, Lr/b;->b:I

    .line 135
    .line 136
    :cond_8
    move v3, v2

    .line 137
    :cond_9
    invoke-virtual {p0}, Lq/d;->B()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_a

    .line 142
    .line 143
    iput v1, p2, Lr/b;->a:I

    .line 144
    .line 145
    move v0, v2

    .line 146
    :cond_a
    invoke-virtual {p0}, Lq/d;->C()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_b

    .line 151
    .line 152
    iput v1, p2, Lr/b;->b:I

    .line 153
    .line 154
    move v3, v2

    .line 155
    :cond_b
    iget-object v7, p0, Lq/d;->t:[I

    .line 156
    .line 157
    const/4 v8, 0x4

    .line 158
    if-eqz v5, :cond_e

    .line 159
    .line 160
    aget v5, v7, v2

    .line 161
    .line 162
    if-ne v5, v8, :cond_c

    .line 163
    .line 164
    iput v1, p2, Lr/b;->a:I

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_c
    if-nez v3, :cond_e

    .line 168
    .line 169
    iget v3, p2, Lr/b;->b:I

    .line 170
    .line 171
    if-ne v3, v1, :cond_d

    .line 172
    .line 173
    iget v3, p2, Lr/b;->d:I

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    iput v6, p2, Lr/b;->a:I

    .line 177
    .line 178
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lq/d;Lr/b;)V

    .line 179
    .line 180
    .line 181
    iget v3, p2, Lr/b;->f:I

    .line 182
    .line 183
    :goto_4
    iput v1, p2, Lr/b;->a:I

    .line 184
    .line 185
    iget v5, p0, Lq/d;->W:F

    .line 186
    .line 187
    int-to-float v3, v3

    .line 188
    mul-float/2addr v5, v3

    .line 189
    float-to-int v3, v5

    .line 190
    iput v3, p2, Lr/b;->c:I

    .line 191
    .line 192
    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    .line 193
    .line 194
    aget v3, v7, v1

    .line 195
    .line 196
    if-ne v3, v8, :cond_f

    .line 197
    .line 198
    iput v1, p2, Lr/b;->b:I

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_f
    if-nez v0, :cond_12

    .line 202
    .line 203
    iget v0, p2, Lr/b;->a:I

    .line 204
    .line 205
    if-ne v0, v1, :cond_10

    .line 206
    .line 207
    iget v0, p2, Lr/b;->c:I

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_10
    iput v6, p2, Lr/b;->b:I

    .line 211
    .line 212
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lq/d;Lr/b;)V

    .line 213
    .line 214
    .line 215
    iget v0, p2, Lr/b;->e:I

    .line 216
    .line 217
    :goto_6
    iput v1, p2, Lr/b;->b:I

    .line 218
    .line 219
    iget v1, p0, Lq/d;->X:I

    .line 220
    .line 221
    const/4 v3, -0x1

    .line 222
    if-ne v1, v3, :cond_11

    .line 223
    .line 224
    int-to-float v0, v0

    .line 225
    iget v1, p0, Lq/d;->W:F

    .line 226
    .line 227
    div-float/2addr v0, v1

    .line 228
    float-to-int v0, v0

    .line 229
    :goto_7
    iput v0, p2, Lr/b;->d:I

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_11
    iget v1, p0, Lq/d;->W:F

    .line 233
    .line 234
    int-to-float v0, v0

    .line 235
    mul-float/2addr v1, v0

    .line 236
    float-to-int v0, v1

    .line 237
    goto :goto_7

    .line 238
    :cond_12
    :goto_8
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/e;->b(Lq/d;Lr/b;)V

    .line 239
    .line 240
    .line 241
    iget p1, p2, Lr/b;->e:I

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Lq/d;->P(I)V

    .line 244
    .line 245
    .line 246
    iget p1, p2, Lr/b;->f:I

    .line 247
    .line 248
    invoke-virtual {p0, p1}, Lq/d;->M(I)V

    .line 249
    .line 250
    .line 251
    iget-boolean p1, p2, Lr/b;->h:Z

    .line 252
    .line 253
    iput-boolean p1, p0, Lq/d;->E:Z

    .line 254
    .line 255
    iget p1, p2, Lr/b;->g:I

    .line 256
    .line 257
    invoke-virtual {p0, p1}, Lq/d;->J(I)V

    .line 258
    .line 259
    .line 260
    iput v2, p2, Lr/b;->j:I

    .line 261
    .line 262
    return-void

    .line 263
    :cond_13
    :goto_9
    iput v2, p2, Lr/b;->e:I

    .line 264
    .line 265
    iput v2, p2, Lr/b;->f:I

    .line 266
    .line 267
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/e;->w0:Lo/d;

    invoke-virtual {v0}, Lo/d;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lq/e;->x0:I

    iput v0, p0, Lq/e;->y0:I

    invoke-super {p0}, Lq/l;->D()V

    return-void
.end method

.method public final Q(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lq/d;->Q(ZZ)V

    iget-object v0, p0, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/d;

    invoke-virtual {v2, p1, p2}, Lq/d;->Q(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 30

    move-object/from16 v1, p0

    sget-object v2, Lq/k;->a:[Z

    const/4 v3, 0x0

    iput v3, v1, Lq/d;->Y:I

    iput v3, v1, Lq/d;->Z:I

    iput-boolean v3, v1, Lq/e;->E0:Z

    iput-boolean v3, v1, Lq/e;->F0:Z

    iget-object v0, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v1, Lq/d;->p0:[I

    const/4 v7, 0x1

    aget v8, v6, v7

    aget v9, v6, v3

    iget v10, v1, Lq/e;->t0:I

    iget-object v11, v1, Lq/d;->J:Lq/c;

    iget-object v12, v1, Lq/d;->I:Lq/c;

    if-nez v10, :cond_1d

    iget v10, v1, Lq/e;->D0:I

    invoke-static {v10, v7}, Lq/k;->b(II)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, v1, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    .line 1
    aget v15, v6, v3

    .line 2
    aget v13, v6, v7

    .line 3
    invoke-virtual/range {p0 .. p0}, Lq/d;->F()V

    iget-object v14, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lq/d;

    invoke-virtual/range {v18 .. v18}, Lq/d;->F()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v7, v1, Lq/e;->v0:Z

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-ne v15, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v2

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2}, Lq/d;->K(II)V

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 4
    invoke-virtual {v12, v15}, Lq/c;->l(I)V

    iput v15, v1, Lq/d;->Y:I

    :goto_1
    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v2, v3, :cond_7

    .line 5
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Lq/d;

    move/from16 v21, v5

    instance-of v5, v12, Lq/h;

    if-eqz v5, :cond_5

    check-cast v12, Lq/h;

    .line 6
    iget v5, v12, Lq/h;->u0:I

    move-object/from16 v23, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 7
    iget v5, v12, Lq/h;->r0:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 8
    :goto_3
    invoke-virtual {v12, v5}, Lq/h;->S(I)V

    goto :goto_4

    .line 9
    :cond_2
    iget v5, v12, Lq/h;->s0:I

    if-eq v5, v6, :cond_3

    .line 10
    invoke-virtual/range {p0 .. p0}, Lq/d;->B()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v5

    .line 11
    iget v6, v12, Lq/h;->s0:I

    sub-int/2addr v5, v6

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lq/d;->B()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    iget v5, v12, Lq/h;->q0:F

    .line 14
    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v5, v5, v20

    float-to-int v5, v5

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v23, v6

    instance-of v5, v12, Lq/a;

    if-eqz v5, :cond_6

    check-cast v12, Lq/a;

    invoke-virtual {v12}, Lq/a;->U()I

    move-result v5

    if-nez v5, :cond_6

    const/16 v19, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v21

    move-object/from16 v12, v22

    move-object/from16 v6, v23

    goto :goto_2

    :cond_7
    move/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v12

    if-eqz v15, :cond_9

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_9

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/d;

    instance-of v6, v5, Lq/h;

    if-eqz v6, :cond_8

    check-cast v5, Lq/h;

    .line 15
    iget v6, v5, Lq/h;->u0:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_8

    const/4 v6, 0x0

    .line 16
    invoke-static {v6, v5, v10, v7}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    invoke-static {v6, v1, v10, v7}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    if-eqz v19, :cond_b

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_b

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/d;

    instance-of v6, v5, Lq/a;

    if-eqz v6, :cond_a

    check-cast v5, Lq/a;

    invoke-virtual {v5}, Lq/a;->U()I

    move-result v6

    if-nez v6, :cond_a

    .line 17
    invoke-virtual {v5}, Lq/a;->T()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-static {v6, v5, v10, v7}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_9

    :cond_a
    const/4 v6, 0x1

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v6, 0x1

    if-ne v13, v6, :cond_c

    .line 18
    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Lq/d;->L(II)V

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v11, v5}, Lq/c;->l(I)V

    iput v5, v1, Lq/d;->Z:I

    :goto_a
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge v2, v3, :cond_12

    .line 20
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq/d;

    instance-of v13, v12, Lq/h;

    if-eqz v13, :cond_10

    check-cast v12, Lq/h;

    .line 21
    iget v13, v12, Lq/h;->u0:I

    if-nez v13, :cond_11

    .line 22
    iget v5, v12, Lq/h;->r0:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_d

    .line 23
    :goto_c
    invoke-virtual {v12, v5}, Lq/h;->S(I)V

    goto :goto_d

    .line 24
    :cond_d
    iget v5, v12, Lq/h;->s0:I

    if-eq v5, v13, :cond_e

    .line 25
    invoke-virtual/range {p0 .. p0}, Lq/d;->C()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v5

    .line 26
    iget v13, v12, Lq/h;->s0:I

    sub-int/2addr v5, v13

    goto :goto_c

    .line 27
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lq/d;->C()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 28
    iget v5, v12, Lq/h;->q0:F

    .line 29
    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v5, v13

    add-float v5, v5, v20

    float-to-int v5, v5

    goto :goto_c

    :cond_f
    :goto_d
    const/4 v5, 0x1

    goto :goto_e

    :cond_10
    instance-of v13, v12, Lq/a;

    if-eqz v13, :cond_11

    check-cast v12, Lq/a;

    invoke-virtual {v12}, Lq/a;->U()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    const/4 v6, 0x1

    :cond_11
    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    if-eqz v5, :cond_14

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_14

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/d;

    instance-of v12, v5, Lq/h;

    if-eqz v12, :cond_13

    check-cast v5, Lq/h;

    .line 30
    iget v12, v5, Lq/h;->u0:I

    if-nez v12, :cond_13

    const/4 v12, 0x1

    .line 31
    invoke-static {v12, v5, v10}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    invoke-static {v2, v1, v10}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    if-eqz v6, :cond_16

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_16

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/d;

    instance-of v6, v5, Lq/a;

    if-eqz v6, :cond_15

    check-cast v5, Lq/a;

    invoke-virtual {v5}, Lq/a;->U()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_15

    .line 32
    invoke-virtual {v5}, Lq/a;->T()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v12, v5, v10}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_1a

    .line 33
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq/d;

    invoke-virtual {v5}, Lq/d;->A()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v5}, Lr/h;->a(Lq/d;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Lr/h;->a:Lr/b;

    invoke-static {v5, v10, v6}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    instance-of v6, v5, Lq/h;

    if-eqz v6, :cond_18

    move-object v6, v5

    check-cast v6, Lq/h;

    .line 34
    iget v6, v6, Lq/h;->u0:I

    if-nez v6, :cond_17

    const/4 v6, 0x0

    .line 35
    :goto_12
    invoke-static {v6, v5, v10}, Lr/h;->g(ILq/d;Landroidx/constraintlayout/widget/e;)V

    goto :goto_13

    :cond_17
    const/4 v6, 0x0

    invoke-static {v6, v5, v10, v7}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_13

    :cond_18
    const/4 v6, 0x0

    invoke-static {v6, v5, v10, v7}, Lr/h;->b(ILq/d;Landroidx/constraintlayout/widget/e;Z)V

    goto :goto_12

    :cond_19
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_1e

    iget-object v3, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/d;

    invoke-virtual {v3}, Lq/d;->A()Z

    move-result v5

    if-eqz v5, :cond_1c

    instance-of v5, v3, Lq/h;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lq/a;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lq/g;

    if-nez v5, :cond_1c

    .line 37
    iget-boolean v5, v3, Lq/d;->F:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    .line 38
    invoke-virtual {v3, v5}, Lq/d;->k(I)I

    move-result v6

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lq/d;->k(I)I

    move-result v7

    const/4 v10, 0x3

    if-ne v6, v10, :cond_1b

    iget v6, v3, Lq/d;->r:I

    if-eq v6, v5, :cond_1b

    if-ne v7, v10, :cond_1b

    iget v6, v3, Lq/d;->s:I

    if-eq v6, v5, :cond_1b

    goto :goto_15

    :cond_1b
    new-instance v5, Lr/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v1, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    invoke-static {v3, v6, v5}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    :cond_1c
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1d
    move-object/from16 v18, v2

    move/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v12

    :cond_1e
    iget-object v2, v1, Lq/e;->w0:Lo/d;

    const/4 v5, 0x2

    if-le v4, v5, :cond_1f

    if-eq v9, v5, :cond_20

    if-ne v8, v5, :cond_1f

    goto :goto_16

    :cond_1f
    move v3, v0

    move/from16 v26, v4

    move v4, v8

    move-object/from16 v24, v11

    move/from16 v5, v21

    move-object v8, v2

    move v2, v9

    goto/16 :goto_37

    :cond_20
    :goto_16
    iget v7, v1, Lq/e;->D0:I

    const/16 v10, 0x400

    invoke-static {v7, v10}, Lq/k;->b(II)Z

    move-result v7

    if-eqz v7, :cond_1f

    iget-object v7, v1, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    iget-object v10, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v12, :cond_23

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq/d;

    const/4 v15, 0x0

    .line 40
    aget v6, v23, v15

    const/16 v17, 0x1

    .line 41
    aget v5, v23, v17

    .line 42
    iget-object v3, v14, Lq/d;->p0:[I

    move-object/from16 v24, v11

    .line 43
    aget v11, v3, v15

    .line 44
    aget v3, v3, v17

    .line 45
    invoke-static {v6, v5, v11, v3}, La/c;->o(IIII)Z

    move-result v3

    if-nez v3, :cond_21

    :goto_18
    move/from16 v27, v0

    move/from16 v26, v4

    move/from16 v25, v8

    move/from16 v28, v9

    move-object v8, v2

    goto/16 :goto_31

    :cond_21
    instance-of v3, v14, Lq/g;

    if-eqz v3, :cond_22

    goto :goto_18

    :cond_22
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v24

    const/4 v5, 0x2

    goto :goto_17

    :cond_23
    move-object/from16 v24, v11

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_19
    if-ge v3, v12, :cond_33

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v4

    move-object/from16 v4, v25

    check-cast v4, Lq/d;

    move/from16 v25, v8

    const/16 v16, 0x0

    .line 46
    aget v8, v23, v16

    move/from16 v27, v0

    const/16 v17, 0x1

    .line 47
    aget v0, v23, v17

    move/from16 v28, v9

    .line 48
    iget-object v9, v4, Lq/d;->p0:[I

    move-object/from16 v29, v2

    .line 49
    aget v2, v9, v16

    .line 50
    aget v9, v9, v17

    .line 51
    invoke-static {v8, v0, v2, v9}, La/c;->o(IIII)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v1, Lq/e;->L0:Lr/b;

    invoke-static {v4, v7, v0}, Lq/e;->W(Lq/d;Landroidx/constraintlayout/widget/e;Lr/b;)V

    :cond_24
    instance-of v0, v4, Lq/h;

    if-eqz v0, :cond_28

    move-object v2, v4

    check-cast v2, Lq/h;

    .line 52
    iget v8, v2, Lq/h;->u0:I

    if-nez v8, :cond_26

    if-nez v11, :cond_25

    .line 53
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_26
    iget v8, v2, Lq/h;->u0:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_28

    if-nez v5, :cond_27

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    instance-of v2, v4, Lq/j;

    if-eqz v2, :cond_2e

    instance-of v2, v4, Lq/a;

    if-eqz v2, :cond_2b

    move-object v2, v4

    check-cast v2, Lq/a;

    invoke-virtual {v2}, Lq/a;->U()I

    move-result v8

    if-nez v8, :cond_2a

    if-nez v6, :cond_29

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v2}, Lq/a;->U()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2e

    if-nez v13, :cond_2d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1a

    :cond_2b
    move-object v2, v4

    check-cast v2, Lq/j;

    if-nez v6, :cond_2c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_2d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    :goto_1a
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v2, v4, Lq/d;->I:Lq/c;

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-nez v2, :cond_30

    iget-object v2, v4, Lq/d;->K:Lq/c;

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-nez v2, :cond_30

    if-nez v0, :cond_30

    instance-of v2, v4, Lq/a;

    if-nez v2, :cond_30

    if-nez v14, :cond_2f

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v2, v4, Lq/d;->J:Lq/c;

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-nez v2, :cond_32

    iget-object v2, v4, Lq/d;->L:Lq/c;

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-nez v2, :cond_32

    iget-object v2, v4, Lq/d;->M:Lq/c;

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-nez v2, :cond_32

    if-nez v0, :cond_32

    instance-of v0, v4, Lq/a;

    if-nez v0, :cond_32

    if-nez v15, :cond_31

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v25

    move/from16 v4, v26

    move/from16 v0, v27

    move/from16 v9, v28

    move-object/from16 v2, v29

    goto/16 :goto_19

    :cond_33
    move/from16 v27, v0

    move-object/from16 v29, v2

    move/from16 v26, v4

    move/from16 v25, v8

    move/from16 v28, v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_1b

    :cond_34
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/j;

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v0}, Lq/j;->S(ILr/n;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lr/n;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1c

    :cond_35
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    .line 56
    iget-object v2, v3, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    .line 57
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c;

    iget-object v3, v3, Lq/c;->d:Lq/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_1d

    :cond_36
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lq/d;->j(I)Lq/c;

    move-result-object v2

    .line 58
    iget-object v2, v2, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    .line 59
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c;

    iget-object v3, v3, Lq/c;->d:Lq/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_1e

    :cond_37
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    .line 60
    iget-object v3, v3, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_38

    .line 61
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/c;

    iget-object v4, v4, Lq/c;->d:Lq/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_1f

    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v14, :cond_39

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/d;

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_20

    :cond_39
    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/h;

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_21

    :cond_3a
    const/4 v5, 0x1

    if-eqz v13, :cond_3b

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/j;

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    move-result-object v7

    invoke-virtual {v4, v5, v7, v0}, Lq/j;->S(ILr/n;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Lr/n;->a(Ljava/util/ArrayList;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_22

    :cond_3b
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lq/d;->j(I)Lq/c;

    move-result-object v4

    .line 62
    iget-object v3, v4, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3c

    .line 63
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/c;

    iget-object v4, v4, Lq/c;->d:Lq/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_23

    :cond_3c
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lq/d;->j(I)Lq/c;

    move-result-object v3

    .line 64
    iget-object v3, v3, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3d

    .line 65
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/c;

    iget-object v4, v4, Lq/c;->d:Lq/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_24

    :cond_3d
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lq/d;->j(I)Lq/c;

    move-result-object v4

    .line 66
    iget-object v3, v4, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_3e

    .line 67
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/c;

    iget-object v4, v4, Lq/c;->d:Lq/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_25

    :cond_3e
    invoke-virtual {v1, v2}, Lq/d;->j(I)Lq/c;

    move-result-object v2

    .line 68
    iget-object v2, v2, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3f

    .line 69
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/c;

    iget-object v3, v3, Lq/c;->d:Lq/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_26

    :cond_3f
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v15, :cond_40

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/d;

    invoke-static {v3, v4, v0, v5}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_27

    :cond_40
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v12, :cond_46

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/d;

    .line 70
    iget-object v4, v3, Lq/d;->p0:[I

    const/4 v5, 0x0

    .line 71
    aget v6, v4, v5

    const/4 v5, 0x3

    if-ne v6, v5, :cond_45

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ne v4, v5, :cond_45

    .line 72
    iget v4, v3, Lq/d;->n0:I

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_42

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr/n;

    iget v9, v8, Lr/n;->b:I

    if-ne v4, v9, :cond_41

    goto :goto_2a

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_42
    const/4 v8, 0x0

    .line 74
    :goto_2a
    iget v3, v3, Lq/d;->o0:I

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v4, :cond_44

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/n;

    iget v9, v7, Lr/n;->b:I

    if-ne v3, v9, :cond_43

    goto :goto_2c

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_44
    const/4 v7, 0x0

    :goto_2c
    if-eqz v8, :cond_45

    if-eqz v7, :cond_45

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v8, v3, v7}, Lr/n;->c(ILr/n;)V

    const/4 v3, 0x2

    .line 77
    iput v3, v7, Lr/n;->c:I

    .line 78
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_47

    move-object/from16 v8, v29

    goto/16 :goto_31

    :cond_47
    const/4 v2, 0x0

    .line 79
    aget v3, v23, v2

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4b

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/n;

    .line 81
    iget v6, v5, Lr/n;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_48

    goto :goto_2d

    :cond_48
    move-object/from16 v8, v29

    const/4 v6, 0x0

    .line 82
    invoke-virtual {v5, v8, v6}, Lr/n;->b(Lo/d;I)I

    move-result v9

    if-le v9, v3, :cond_49

    move-object v4, v5

    move v3, v9

    :cond_49
    move-object/from16 v29, v8

    goto :goto_2d

    :cond_4a
    move-object/from16 v8, v29

    const/4 v7, 0x1

    if-eqz v4, :cond_4c

    invoke-virtual {v1, v7}, Lq/d;->N(I)V

    invoke-virtual {v1, v3}, Lq/d;->P(I)V

    goto :goto_2e

    :cond_4b
    move-object/from16 v8, v29

    const/4 v7, 0x1

    :cond_4c
    const/4 v4, 0x0

    .line 83
    :goto_2e
    aget v2, v23, v7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4d
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/n;

    .line 85
    iget v6, v5, Lr/n;->c:I

    if-nez v6, :cond_4e

    goto :goto_2f

    :cond_4e
    const/4 v6, 0x1

    .line 86
    invoke-virtual {v5, v8, v6}, Lr/n;->b(Lo/d;I)I

    move-result v7

    if-le v7, v2, :cond_4d

    move-object v3, v5

    move v2, v7

    goto :goto_2f

    :cond_4f
    const/4 v6, 0x1

    if-eqz v3, :cond_50

    invoke-virtual {v1, v6}, Lq/d;->O(I)V

    invoke-virtual {v1, v2}, Lq/d;->M(I)V

    goto :goto_30

    :cond_50
    const/4 v3, 0x0

    :goto_30
    if-nez v4, :cond_51

    if-eqz v3, :cond_52

    :cond_51
    move/from16 v2, v28

    const/4 v3, 0x2

    goto :goto_32

    :cond_52
    :goto_31
    move/from16 v5, v21

    move/from16 v4, v25

    move/from16 v3, v27

    move/from16 v2, v28

    goto :goto_37

    :goto_32
    if-ne v2, v3, :cond_54

    .line 87
    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v0

    move/from16 v3, v27

    if-ge v3, v0, :cond_53

    if-lez v3, :cond_53

    invoke-virtual {v1, v3}, Lq/d;->P(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lq/e;->E0:Z

    goto :goto_34

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v0

    :goto_33
    move/from16 v4, v25

    const/4 v3, 0x2

    goto :goto_35

    :cond_54
    move/from16 v3, v27

    :goto_34
    move v0, v3

    goto :goto_33

    :goto_35
    if-ne v4, v3, :cond_56

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v3

    move/from16 v5, v21

    if-ge v5, v3, :cond_55

    if-lez v5, :cond_55

    invoke-virtual {v1, v5}, Lq/d;->M(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lq/e;->F0:Z

    goto :goto_36

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v5

    goto :goto_36

    :cond_56
    move/from16 v5, v21

    :goto_36
    move v3, v0

    const/4 v0, 0x1

    goto :goto_38

    :goto_37
    const/4 v0, 0x0

    :goto_38
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lq/e;->X(I)Z

    move-result v7

    if-nez v7, :cond_58

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Lq/e;->X(I)Z

    move-result v7

    if-eqz v7, :cond_57

    goto :goto_39

    :cond_57
    const/4 v7, 0x0

    goto :goto_3a

    :cond_58
    :goto_39
    const/4 v7, 0x1

    :goto_3a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lo/d;->g:Z

    iget v10, v1, Lq/e;->D0:I

    if-eqz v10, :cond_59

    if-eqz v7, :cond_59

    const/4 v7, 0x1

    iput-boolean v7, v8, Lo/d;->g:Z

    goto :goto_3b

    :cond_59
    const/4 v7, 0x1

    :goto_3b
    iget-object v10, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 88
    aget v11, v23, v9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5b

    .line 89
    aget v11, v23, v7

    if-ne v11, v12, :cond_5a

    goto :goto_3c

    :cond_5a
    move v7, v9

    goto :goto_3d

    :cond_5b
    :goto_3c
    const/4 v7, 0x1

    :goto_3d
    iput v9, v1, Lq/e;->z0:I

    iput v9, v1, Lq/e;->A0:I

    move/from16 v11, v26

    const/4 v9, 0x0

    :goto_3e
    if-ge v9, v11, :cond_5d

    iget-object v12, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lq/d;

    instance-of v13, v12, Lq/l;

    if-eqz v13, :cond_5c

    check-cast v12, Lq/l;

    invoke-virtual {v12}, Lq/l;->S()V

    :cond_5c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_5d
    invoke-virtual {v1, v6}, Lq/e;->X(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3f
    if-eqz v13, :cond_72

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v8}, Lo/d;->t()V

    const/4 v14, 0x0

    iput v14, v1, Lq/e;->z0:I

    iput v14, v1, Lq/e;->A0:I

    invoke-virtual {v1, v8}, Lq/d;->h(Lo/d;)V

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v11, :cond_5e

    iget-object v14, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq/d;

    invoke-virtual {v14, v8}, Lq/d;->h(Lo/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :catch_0
    move-exception v0

    move/from16 v21, v12

    const/4 v6, 0x0

    :goto_41
    const/4 v14, 0x5

    goto/16 :goto_49

    :cond_5e
    invoke-virtual {v1, v8}, Lq/e;->U(Lo/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lq/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v0, :cond_5f

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lq/e;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v14, v24

    :try_start_3
    invoke-virtual {v8, v14}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v13

    iget-object v6, v1, Lq/e;->w0:Lo/d;

    .line 91
    invoke-virtual {v6, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v21, v12

    move-object/from16 v24, v14

    const/4 v12, 0x5

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v13, v14, v12}, Lo/d;->f(Lo/j;Lo/j;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Lq/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_43

    :catch_1
    move-exception v0

    :goto_42
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_41

    :catch_2
    move-exception v0

    move/from16 v21, v12

    move-object/from16 v24, v14

    goto :goto_42

    :catch_3
    move-exception v0

    move/from16 v21, v12

    goto :goto_42

    :cond_5f
    move/from16 v21, v12

    :goto_43
    :try_start_5
    iget-object v0, v1, Lq/e;->I0:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v0, :cond_60

    .line 92
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, v1, Lq/e;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/c;

    iget-object v6, v1, Lq/d;->L:Lq/c;

    invoke-virtual {v8, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6

    iget-object v12, v1, Lq/e;->w0:Lo/d;

    .line 93
    invoke-virtual {v12, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v12, v6, v0, v13, v14}, Lo/d;->f(Lo/j;Lo/j;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Lq/e;->I0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_60
    :try_start_7
    iget-object v0, v1, Lq/e;->H0:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v0, :cond_61

    .line 94
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lq/e;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/c;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v6, v22

    :try_start_9
    invoke-virtual {v8, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v12

    iget-object v13, v1, Lq/e;->w0:Lo/d;

    .line 95
    invoke-virtual {v13, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v22, v6

    const/4 v6, 0x5

    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v13, v0, v12, v14, v6}, Lo/d;->f(Lo/j;Lo/j;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Lq/e;->H0:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_44

    :catch_4
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_42

    :cond_61
    :goto_44
    :try_start_b
    iget-object v0, v1, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    .line 96
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/c;

    iget-object v6, v1, Lq/d;->K:Lq/c;

    invoke-virtual {v8, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    iget-object v12, v1, Lq/e;->w0:Lo/d;

    .line 97
    invoke-virtual {v12, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    const/4 v13, 0x0

    const/4 v14, 0x5

    :try_start_d
    invoke-virtual {v12, v6, v0, v13, v14}, Lo/d;->f(Lo/j;Lo/j;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    const/4 v6, 0x0

    :try_start_e
    iput-object v6, v1, Lq/e;->J0:Ljava/lang/ref/WeakReference;

    goto :goto_47

    :catch_5
    move-exception v0

    :goto_45
    const/4 v13, 0x1

    goto :goto_49

    :catch_6
    move-exception v0

    const/4 v6, 0x0

    goto :goto_45

    :catch_7
    move-exception v0

    goto :goto_46

    :catch_8
    move-exception v0

    :goto_46
    const/4 v6, 0x0

    const/4 v14, 0x5

    goto :goto_45

    :cond_62
    const/4 v6, 0x0

    const/4 v14, 0x5

    .line 98
    :goto_47
    invoke-virtual {v8}, Lo/d;->p()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :goto_48
    const/4 v6, 0x0

    const/4 v12, 0x2

    goto :goto_4a

    :catch_9
    move-exception v0

    move/from16 v21, v12

    goto :goto_46

    :goto_49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "EXCEPTION : "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v13, :cond_66

    goto :goto_48

    .line 99
    :goto_4a
    aput-boolean v6, v18, v12

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lq/e;->X(I)Z

    move-result v0

    invoke-virtual {v1, v8, v0}, Lq/d;->R(Lo/d;Z)V

    iget-object v12, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4b
    if-ge v13, v12, :cond_65

    iget-object v6, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/d;

    invoke-virtual {v6, v8, v0}, Lq/d;->R(Lo/d;Z)V

    move/from16 v25, v0

    .line 100
    iget v0, v6, Lq/d;->h:I

    move/from16 v26, v12

    const/4 v12, -0x1

    if-ne v0, v12, :cond_63

    iget v0, v6, Lq/d;->i:I

    if-eq v0, v12, :cond_64

    :cond_63
    const/4 v14, 0x1

    :cond_64
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v25

    move/from16 v12, v26

    const/16 v6, 0x40

    goto :goto_4b

    :cond_65
    const/4 v12, -0x1

    goto :goto_4d

    :cond_66
    const/4 v12, -0x1

    .line 101
    invoke-virtual {v1, v8, v9}, Lq/d;->R(Lo/d;Z)V

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v11, :cond_67

    iget-object v6, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/d;

    invoke-virtual {v6, v8, v9}, Lq/d;->R(Lo/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_67
    const/4 v14, 0x0

    :goto_4d
    const/16 v0, 0x8

    if-eqz v7, :cond_6a

    if-ge v15, v0, :cond_6a

    const/4 v6, 0x2

    aget-boolean v13, v18, v6

    if-eqz v13, :cond_6a

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4e
    if-ge v6, v11, :cond_68

    iget-object v0, v1, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/d;

    move/from16 v26, v7

    iget v7, v0, Lq/d;->Y:I

    invoke-virtual {v0}, Lq/d;->r()I

    move-result v27

    add-int v7, v27, v7

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v7, v0, Lq/d;->Z:I

    invoke-virtual {v0}, Lq/d;->l()I

    move-result v0

    add-int/2addr v0, v7

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v26

    const/16 v0, 0x8

    goto :goto_4e

    :cond_68
    move/from16 v26, v7

    iget v0, v1, Lq/d;->b0:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Lq/d;->c0:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x2

    if-ne v2, v7, :cond_69

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v12

    if-ge v12, v0, :cond_69

    invoke-virtual {v1, v0}, Lq/d;->P(I)V

    const/4 v12, 0x0

    aput v7, v23, v12

    const/4 v14, 0x1

    const/16 v21, 0x1

    :cond_69
    if-ne v4, v7, :cond_6b

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v0

    if-ge v0, v6, :cond_6b

    invoke-virtual {v1, v6}, Lq/d;->M(I)V

    const/4 v6, 0x1

    aput v7, v23, v6

    const/4 v14, 0x1

    const/16 v21, 0x1

    goto :goto_4f

    :cond_6a
    move/from16 v26, v7

    :cond_6b
    :goto_4f
    iget v0, v1, Lq/d;->b0:I

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v6

    if-le v0, v6, :cond_6c

    invoke-virtual {v1, v0}, Lq/d;->P(I)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v6, v23, v7

    move v14, v6

    move/from16 v17, v14

    goto :goto_50

    :cond_6c
    const/4 v6, 0x1

    move/from16 v17, v21

    :goto_50
    iget v0, v1, Lq/d;->c0:I

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v7

    if-le v0, v7, :cond_6d

    invoke-virtual {v1, v0}, Lq/d;->M(I)V

    aput v6, v23, v6

    move v0, v6

    move v14, v0

    goto :goto_51

    :cond_6d
    move/from16 v0, v17

    :goto_51
    if-nez v0, :cond_70

    const/4 v7, 0x0

    aget v12, v23, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6e

    if-lez v3, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lq/d;->r()I

    move-result v12

    if-le v12, v3, :cond_6e

    iput-boolean v6, v1, Lq/e;->E0:Z

    aput v6, v23, v7

    invoke-virtual {v1, v3}, Lq/d;->P(I)V

    move v0, v6

    move v14, v0

    :cond_6e
    aget v7, v23, v6

    const/4 v12, 0x2

    if-ne v7, v12, :cond_6f

    if-lez v5, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lq/d;->l()I

    move-result v7

    if-le v7, v5, :cond_6f

    iput-boolean v6, v1, Lq/e;->F0:Z

    aput v6, v23, v6

    invoke-virtual {v1, v5}, Lq/d;->M(I)V

    const/4 v0, 0x1

    const/16 v6, 0x8

    const/4 v14, 0x1

    goto :goto_53

    :cond_6f
    :goto_52
    const/16 v6, 0x8

    goto :goto_53

    :cond_70
    const/4 v12, 0x2

    goto :goto_52

    :goto_53
    if-le v15, v6, :cond_71

    const/4 v13, 0x0

    goto :goto_54

    :cond_71
    move v13, v14

    :goto_54
    move v12, v0

    move v0, v15

    move/from16 v7, v26

    const/16 v6, 0x40

    goto/16 :goto_3f

    :cond_72
    move/from16 v21, v12

    iput-object v10, v1, Lq/l;->q0:Ljava/util/ArrayList;

    if-eqz v21, :cond_73

    const/4 v3, 0x0

    aput v2, v23, v3

    const/4 v2, 0x1

    aput v4, v23, v2

    :cond_73
    iget-object v0, v8, Lo/d;->l:Lv1/m;

    invoke-virtual {v1, v0}, Lq/l;->G(Lv1/m;)V

    return-void
.end method

.method public final T(ILq/d;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget p1, p0, Lq/e;->z0:I

    .line 5
    .line 6
    add-int/2addr p1, v0

    .line 7
    iget-object v1, p0, Lq/e;->C0:[Lq/b;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt p1, v2, :cond_0

    .line 11
    .line 12
    array-length p1, v1

    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [Lq/b;

    .line 20
    .line 21
    iput-object p1, p0, Lq/e;->C0:[Lq/b;

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lq/e;->C0:[Lq/b;

    .line 24
    .line 25
    iget v1, p0, Lq/e;->z0:I

    .line 26
    .line 27
    new-instance v2, Lq/b;

    .line 28
    .line 29
    iget-boolean v3, p0, Lq/e;->v0:Z

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v2, p2, v4, v3}, Lq/b;-><init>(Lq/d;IZ)V

    .line 33
    .line 34
    .line 35
    aput-object v2, p1, v1

    .line 36
    .line 37
    add-int/2addr v1, v0

    .line 38
    iput v1, p0, Lq/e;->z0:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ne p1, v0, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lq/e;->A0:I

    .line 44
    .line 45
    add-int/2addr p1, v0

    .line 46
    iget-object v1, p0, Lq/e;->B0:[Lq/b;

    .line 47
    .line 48
    array-length v2, v1

    .line 49
    if-lt p1, v2, :cond_2

    .line 50
    .line 51
    array-length p1, v1

    .line 52
    mul-int/lit8 p1, p1, 0x2

    .line 53
    .line 54
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Lq/b;

    .line 59
    .line 60
    iput-object p1, p0, Lq/e;->B0:[Lq/b;

    .line 61
    .line 62
    :cond_2
    iget-object p1, p0, Lq/e;->B0:[Lq/b;

    .line 63
    .line 64
    iget v1, p0, Lq/e;->A0:I

    .line 65
    .line 66
    new-instance v2, Lq/b;

    .line 67
    .line 68
    iget-boolean v3, p0, Lq/e;->v0:Z

    .line 69
    .line 70
    invoke-direct {v2, p2, v0, v3}, Lq/b;-><init>(Lq/d;IZ)V

    .line 71
    .line 72
    .line 73
    aput-object v2, p1, v1

    .line 74
    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Lq/e;->A0:I

    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public final U(Lo/d;)V
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lq/e;->X(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v6, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lq/d;

    .line 29
    .line 30
    iget-object v7, v6, Lq/d;->S:[Z

    .line 31
    .line 32
    aput-boolean v2, v7, v2

    .line 33
    .line 34
    aput-boolean v2, v7, v5

    .line 35
    .line 36
    instance-of v6, v6, Lq/a;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    move v4, v5

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v3, 0x2

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    move v4, v2

    .line 48
    :goto_1
    if-ge v4, v1, :cond_8

    .line 49
    .line 50
    iget-object v6, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lq/d;

    .line 57
    .line 58
    instance-of v7, v6, Lq/a;

    .line 59
    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    check-cast v6, Lq/a;

    .line 63
    .line 64
    move v7, v2

    .line 65
    :goto_2
    iget v8, v6, Lq/j;->r0:I

    .line 66
    .line 67
    if-ge v7, v8, :cond_7

    .line 68
    .line 69
    iget-object v8, v6, Lq/j;->q0:[Lq/d;

    .line 70
    .line 71
    aget-object v8, v8, v7

    .line 72
    .line 73
    iget-boolean v9, v6, Lq/a;->t0:Z

    .line 74
    .line 75
    if-nez v9, :cond_2

    .line 76
    .line 77
    invoke-virtual {v8}, Lq/d;->d()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-nez v9, :cond_2

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_2
    iget v9, v6, Lq/a;->s0:I

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    if-ne v9, v5, :cond_3

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_3
    if-eq v9, v3, :cond_4

    .line 92
    .line 93
    const/4 v10, 0x3

    .line 94
    if-ne v9, v10, :cond_6

    .line 95
    .line 96
    :cond_4
    iget-object v8, v8, Lq/d;->S:[Z

    .line 97
    .line 98
    aput-boolean v5, v8, v5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v8, v8, Lq/d;->S:[Z

    .line 102
    .line 103
    aput-boolean v5, v8, v2

    .line 104
    .line 105
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v4, p0, Lq/e;->K0:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 114
    .line 115
    .line 116
    move v6, v2

    .line 117
    :goto_5
    if-ge v6, v1, :cond_c

    .line 118
    .line 119
    iget-object v7, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Lq/d;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    instance-of v8, v7, Lq/g;

    .line 131
    .line 132
    if-nez v8, :cond_9

    .line 133
    .line 134
    instance-of v9, v7, Lq/h;

    .line 135
    .line 136
    if-eqz v9, :cond_b

    .line 137
    .line 138
    :cond_9
    if-eqz v8, :cond_a

    .line 139
    .line 140
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    invoke-virtual {v7, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 145
    .line 146
    .line 147
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-lez v6, :cond_11

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_f

    .line 169
    .line 170
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lq/d;

    .line 175
    .line 176
    check-cast v8, Lq/g;

    .line 177
    .line 178
    move v9, v2

    .line 179
    :goto_8
    iget v10, v8, Lq/j;->r0:I

    .line 180
    .line 181
    if-ge v9, v10, :cond_d

    .line 182
    .line 183
    iget-object v10, v8, Lq/j;->q0:[Lq/d;

    .line 184
    .line 185
    aget-object v10, v10, v9

    .line 186
    .line 187
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_e

    .line 192
    .line 193
    invoke-virtual {v8, p1, v0}, Lq/g;->c(Lo/d;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-ne v6, v7, :cond_c

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_10

    .line 218
    .line 219
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    check-cast v7, Lq/d;

    .line 224
    .line 225
    invoke-virtual {v7, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_11
    sget-boolean v4, Lo/d;->p:Z

    .line 234
    .line 235
    if-eqz v4, :cond_16

    .line 236
    .line 237
    new-instance v4, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 240
    .line 241
    .line 242
    move v6, v2

    .line 243
    :goto_b
    if-ge v6, v1, :cond_14

    .line 244
    .line 245
    iget-object v7, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Lq/d;

    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    instance-of v8, v7, Lq/g;

    .line 257
    .line 258
    if-nez v8, :cond_13

    .line 259
    .line 260
    instance-of v8, v7, Lq/h;

    .line 261
    .line 262
    if-eqz v8, :cond_12

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_12
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_13
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_14
    iget-object v1, p0, Lq/d;->p0:[I

    .line 272
    .line 273
    aget v1, v1, v2

    .line 274
    .line 275
    if-ne v1, v3, :cond_15

    .line 276
    .line 277
    move v10, v2

    .line 278
    goto :goto_d

    .line 279
    :cond_15
    move v10, v5

    .line 280
    :goto_d
    const/4 v11, 0x0

    .line 281
    move-object v6, p0

    .line 282
    move-object v7, p0

    .line 283
    move-object v8, p1

    .line 284
    move-object v9, v4

    .line 285
    invoke-virtual/range {v6 .. v11}, Lq/d;->b(Lq/e;Lo/d;Ljava/util/HashSet;IZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_1d

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Lq/d;

    .line 303
    .line 304
    invoke-static {p0, p1, v3}, Lq/k;->a(Lq/e;Lo/d;Lq/d;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 308
    .line 309
    .line 310
    goto :goto_e

    .line 311
    :cond_16
    move v4, v2

    .line 312
    :goto_f
    if-ge v4, v1, :cond_1d

    .line 313
    .line 314
    iget-object v6, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Lq/d;

    .line 321
    .line 322
    instance-of v7, v6, Lq/e;

    .line 323
    .line 324
    if-eqz v7, :cond_1a

    .line 325
    .line 326
    iget-object v7, v6, Lq/d;->p0:[I

    .line 327
    .line 328
    aget v8, v7, v2

    .line 329
    .line 330
    aget v7, v7, v5

    .line 331
    .line 332
    if-ne v8, v3, :cond_17

    .line 333
    .line 334
    invoke-virtual {v6, v5}, Lq/d;->N(I)V

    .line 335
    .line 336
    .line 337
    :cond_17
    if-ne v7, v3, :cond_18

    .line 338
    .line 339
    invoke-virtual {v6, v5}, Lq/d;->O(I)V

    .line 340
    .line 341
    .line 342
    :cond_18
    invoke-virtual {v6, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 343
    .line 344
    .line 345
    if-ne v8, v3, :cond_19

    .line 346
    .line 347
    invoke-virtual {v6, v8}, Lq/d;->N(I)V

    .line 348
    .line 349
    .line 350
    :cond_19
    if-ne v7, v3, :cond_1c

    .line 351
    .line 352
    invoke-virtual {v6, v7}, Lq/d;->O(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_10

    .line 356
    :cond_1a
    invoke-static {p0, p1, v6}, Lq/k;->a(Lq/e;Lo/d;Lq/d;)V

    .line 357
    .line 358
    .line 359
    instance-of v7, v6, Lq/g;

    .line 360
    .line 361
    if-nez v7, :cond_1c

    .line 362
    .line 363
    instance-of v7, v6, Lq/h;

    .line 364
    .line 365
    if-eqz v7, :cond_1b

    .line 366
    .line 367
    goto :goto_10

    .line 368
    :cond_1b
    invoke-virtual {v6, p1, v0}, Lq/d;->c(Lo/d;Z)V

    .line 369
    .line 370
    .line 371
    :cond_1c
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_1d
    iget v0, p0, Lq/e;->z0:I

    .line 375
    .line 376
    const/4 v1, 0x0

    .line 377
    if-lez v0, :cond_1e

    .line 378
    .line 379
    invoke-static {p0, p1, v1, v2}, La/c;->a(Lq/e;Lo/d;Ljava/util/ArrayList;I)V

    .line 380
    .line 381
    .line 382
    :cond_1e
    iget v0, p0, Lq/e;->A0:I

    .line 383
    .line 384
    if-lez v0, :cond_1f

    .line 385
    .line 386
    invoke-static {p0, p1, v1, v5}, La/c;->a(Lq/e;Lo/d;Ljava/util/ArrayList;I)V

    .line 387
    .line 388
    .line 389
    :cond_1f
    return-void
.end method

.method public final V(IZ)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    iget-object v1, p0, Lq/e;->s0:Lr/e;

    .line 4
    .line 5
    iget-object v2, v1, Lr/e;->a:Lq/e;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lq/d;->k(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-virtual {v2, v0}, Lq/d;->k(I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-virtual {v2}, Lq/d;->s()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {v2}, Lq/d;->t()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    iget-object v8, v1, Lr/e;->e:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    const/4 v9, 0x2

    .line 29
    if-eq v4, v9, :cond_0

    .line 30
    .line 31
    if-ne v5, v9, :cond_4

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_2

    .line 42
    .line 43
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Lr/o;

    .line 48
    .line 49
    iget v12, v11, Lr/o;->f:I

    .line 50
    .line 51
    if-ne v12, p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v11}, Lr/o;->k()Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-nez v11, :cond_1

    .line 58
    .line 59
    move p2, v3

    .line 60
    :cond_2
    if-nez p1, :cond_3

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    if-ne v4, v9, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lq/d;->N(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Lr/e;->d(Lq/e;I)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-virtual {v2, p2}, Lq/d;->P(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, v2, Lq/d;->d:Lr/k;

    .line 77
    .line 78
    iget-object p2, p2, Lr/o;->e:Lr/g;

    .line 79
    .line 80
    invoke-virtual {v2}, Lq/d;->r()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    :goto_0
    invoke-virtual {p2, v9}, Lr/g;->d(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    if-eqz p2, :cond_4

    .line 89
    .line 90
    if-ne v5, v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Lq/d;->O(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v0}, Lr/e;->d(Lq/e;I)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {v2, p2}, Lq/d;->M(I)V

    .line 100
    .line 101
    .line 102
    iget-object p2, v2, Lq/d;->e:Lr/m;

    .line 103
    .line 104
    iget-object p2, p2, Lr/o;->e:Lr/g;

    .line 105
    .line 106
    invoke-virtual {v2}, Lq/d;->l()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    :goto_1
    iget-object p2, v2, Lq/d;->p0:[I

    .line 112
    .line 113
    const/4 v9, 0x4

    .line 114
    if-nez p1, :cond_6

    .line 115
    .line 116
    aget p2, p2, v3

    .line 117
    .line 118
    if-eq p2, v0, :cond_5

    .line 119
    .line 120
    if-ne p2, v9, :cond_7

    .line 121
    .line 122
    :cond_5
    invoke-virtual {v2}, Lq/d;->r()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    add-int/2addr p2, v6

    .line 127
    iget-object v7, v2, Lq/d;->d:Lr/k;

    .line 128
    .line 129
    iget-object v7, v7, Lr/o;->i:Lr/f;

    .line 130
    .line 131
    invoke-virtual {v7, p2}, Lr/f;->d(I)V

    .line 132
    .line 133
    .line 134
    iget-object v7, v2, Lq/d;->d:Lr/k;

    .line 135
    .line 136
    iget-object v7, v7, Lr/o;->e:Lr/g;

    .line 137
    .line 138
    sub-int/2addr p2, v6

    .line 139
    invoke-virtual {v7, p2}, Lr/g;->d(I)V

    .line 140
    .line 141
    .line 142
    :goto_2
    move p2, v0

    .line 143
    goto :goto_4

    .line 144
    :cond_6
    aget p2, p2, v0

    .line 145
    .line 146
    if-eq p2, v0, :cond_8

    .line 147
    .line 148
    if-ne p2, v9, :cond_7

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move p2, v3

    .line 152
    goto :goto_4

    .line 153
    :cond_8
    :goto_3
    invoke-virtual {v2}, Lq/d;->l()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    add-int/2addr p2, v7

    .line 158
    iget-object v6, v2, Lq/d;->e:Lr/m;

    .line 159
    .line 160
    iget-object v6, v6, Lr/o;->i:Lr/f;

    .line 161
    .line 162
    invoke-virtual {v6, p2}, Lr/f;->d(I)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v2, Lq/d;->e:Lr/m;

    .line 166
    .line 167
    iget-object v6, v6, Lr/o;->e:Lr/g;

    .line 168
    .line 169
    sub-int/2addr p2, v7

    .line 170
    invoke-virtual {v6, p2}, Lr/g;->d(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_4
    invoke-virtual {v1}, Lr/e;->g()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_b

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Lr/o;

    .line 192
    .line 193
    iget v7, v6, Lr/o;->f:I

    .line 194
    .line 195
    if-eq v7, p1, :cond_9

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_9
    iget-object v7, v6, Lr/o;->b:Lq/d;

    .line 199
    .line 200
    if-ne v7, v2, :cond_a

    .line 201
    .line 202
    iget-boolean v7, v6, Lr/o;->g:Z

    .line 203
    .line 204
    if-nez v7, :cond_a

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_a
    invoke-virtual {v6}, Lr/o;->e()V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_11

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    check-cast v6, Lr/o;

    .line 226
    .line 227
    iget v7, v6, Lr/o;->f:I

    .line 228
    .line 229
    if-eq v7, p1, :cond_d

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_d
    if-nez p2, :cond_e

    .line 233
    .line 234
    iget-object v7, v6, Lr/o;->b:Lq/d;

    .line 235
    .line 236
    if-ne v7, v2, :cond_e

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_e
    iget-object v7, v6, Lr/o;->h:Lr/f;

    .line 240
    .line 241
    iget-boolean v7, v7, Lr/f;->j:Z

    .line 242
    .line 243
    if-nez v7, :cond_f

    .line 244
    .line 245
    :goto_7
    move v0, v3

    .line 246
    goto :goto_8

    .line 247
    :cond_f
    iget-object v7, v6, Lr/o;->i:Lr/f;

    .line 248
    .line 249
    iget-boolean v7, v7, Lr/f;->j:Z

    .line 250
    .line 251
    if-nez v7, :cond_10

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_10
    instance-of v7, v6, Lr/c;

    .line 255
    .line 256
    if-nez v7, :cond_c

    .line 257
    .line 258
    iget-object v6, v6, Lr/o;->e:Lr/g;

    .line 259
    .line 260
    iget-boolean v6, v6, Lr/f;->j:Z

    .line 261
    .line 262
    if-nez v6, :cond_c

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_11
    :goto_8
    invoke-virtual {v2, v4}, Lq/d;->N(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v5}, Lq/d;->O(I)V

    .line 269
    .line 270
    .line 271
    return v0
.end method

.method public final X(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lq/e;->D0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lq/d;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":{\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "  actualWidth:"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lq/d;->U:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\n"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "  actualHeight:"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v2, p0, Lq/d;->V:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lq/d;

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lq/d;->o(Ljava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    const-string v1, ",\n"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "}"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    return-void
.end method
