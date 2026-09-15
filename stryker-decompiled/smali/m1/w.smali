.class public abstract Lm1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lv1/p;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "randomUUID()"

    .line 11
    .line 12
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lm1/w;->a:Ljava/util/UUID;

    .line 16
    .line 17
    new-instance v1, Lv1/p;

    .line 18
    .line 19
    iget-object v2, v0, Lm1/w;->a:Ljava/util/UUID;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v2, "id.toString()"

    .line 26
    .line 27
    invoke-static {v4, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const-wide/16 v10, 0x0

    .line 38
    .line 39
    const-wide/16 v12, 0x0

    .line 40
    .line 41
    const-wide/16 v14, 0x0

    .line 42
    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const-wide/16 v19, 0x0

    .line 48
    .line 49
    const-wide/16 v21, 0x0

    .line 50
    .line 51
    const-wide/16 v23, 0x0

    .line 52
    .line 53
    const-wide/16 v25, 0x0

    .line 54
    .line 55
    const/16 v27, 0x0

    .line 56
    .line 57
    const/16 v29, 0x0

    .line 58
    .line 59
    const v30, 0xffffa

    .line 60
    .line 61
    .line 62
    const/16 v31, 0x0

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    const/16 v28, 0x0

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    invoke-direct/range {v3 .. v31}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIIII)V

    .line 71
    .line 72
    .line 73
    iput-object v1, v0, Lm1/w;->b:Lv1/p;

    .line 74
    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    filled-new-array {v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-static {v3}, Lv1/f;->H(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    aget-object v1, v1, v3

    .line 95
    .line 96
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iput-object v2, v0, Lm1/w;->c:Ljava/util/LinkedHashSet;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a()Lm1/x;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lm1/w;->b()Lm1/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lm1/w;->b:Lv1/p;

    .line 8
    .line 9
    iget-object v2, v2, Lv1/p;->j:Lm1/d;

    .line 10
    .line 11
    iget-object v3, v2, Lm1/d;->h:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    xor-int/2addr v3, v4

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iget-boolean v3, v2, Lm1/d;->d:Z

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    iget-boolean v3, v2, Lm1/d;->b:Z

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-boolean v2, v2, Lm1/d;->c:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v2, v4

    .line 37
    :goto_1
    iget-object v3, v0, Lm1/w;->b:Lv1/p;

    .line 38
    .line 39
    iget-boolean v5, v3, Lv1/p;->q:Z

    .line 40
    .line 41
    if-eqz v5, :cond_4

    .line 42
    .line 43
    xor-int/2addr v2, v4

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-wide v2, v3, Lv1/p;->g:J

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    cmp-long v2, v2, v4

    .line 51
    .line 52
    if-gtz v2, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string v2, "Expedited jobs cannot be delayed"

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v2, "Expedited jobs only support network and storage constraints"

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "randomUUID()"

    .line 84
    .line 85
    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, v0, Lm1/w;->a:Ljava/util/UUID;

    .line 89
    .line 90
    new-instance v3, Lv1/p;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const-string v2, "id.toString()"

    .line 97
    .line 98
    invoke-static {v5, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lm1/w;->b:Lv1/p;

    .line 102
    .line 103
    const-string v4, "other"

    .line 104
    .line 105
    invoke-static {v2, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v7, v2, Lv1/p;->c:Ljava/lang/String;

    .line 109
    .line 110
    iget v6, v2, Lv1/p;->b:I

    .line 111
    .line 112
    iget-object v8, v2, Lv1/p;->d:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v9, Lm1/e;

    .line 115
    .line 116
    iget-object v10, v2, Lv1/p;->e:Lm1/e;

    .line 117
    .line 118
    invoke-direct {v9, v10}, Lm1/e;-><init>(Lm1/e;)V

    .line 119
    .line 120
    .line 121
    new-instance v10, Lm1/e;

    .line 122
    .line 123
    iget-object v11, v2, Lv1/p;->f:Lm1/e;

    .line 124
    .line 125
    invoke-direct {v10, v11}, Lm1/e;-><init>(Lm1/e;)V

    .line 126
    .line 127
    .line 128
    iget-wide v11, v2, Lv1/p;->g:J

    .line 129
    .line 130
    iget-wide v13, v2, Lv1/p;->h:J

    .line 131
    .line 132
    move-object/from16 v33, v1

    .line 133
    .line 134
    iget-wide v0, v2, Lv1/p;->i:J

    .line 135
    .line 136
    new-instance v34, Lm1/d;

    .line 137
    .line 138
    iget-object v15, v2, Lv1/p;->j:Lm1/d;

    .line 139
    .line 140
    invoke-static {v15, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v4, v15, Lm1/d;->b:Z

    .line 144
    .line 145
    move-wide/from16 v35, v0

    .line 146
    .line 147
    iget-boolean v0, v15, Lm1/d;->c:Z

    .line 148
    .line 149
    iget v1, v15, Lm1/d;->a:I

    .line 150
    .line 151
    move-wide/from16 v37, v13

    .line 152
    .line 153
    iget-boolean v13, v15, Lm1/d;->d:Z

    .line 154
    .line 155
    iget-boolean v14, v15, Lm1/d;->e:Z

    .line 156
    .line 157
    move-wide/from16 v39, v11

    .line 158
    .line 159
    iget-object v11, v15, Lm1/d;->h:Ljava/util/Set;

    .line 160
    .line 161
    move-object v12, v9

    .line 162
    move-object/from16 v41, v10

    .line 163
    .line 164
    iget-wide v9, v15, Lm1/d;->f:J

    .line 165
    .line 166
    move-object/from16 v42, v7

    .line 167
    .line 168
    move-object/from16 v43, v8

    .line 169
    .line 170
    iget-wide v7, v15, Lm1/d;->g:J

    .line 171
    .line 172
    move-object/from16 v15, v34

    .line 173
    .line 174
    move/from16 v16, v1

    .line 175
    .line 176
    move/from16 v17, v4

    .line 177
    .line 178
    move/from16 v18, v0

    .line 179
    .line 180
    move/from16 v19, v13

    .line 181
    .line 182
    move/from16 v20, v14

    .line 183
    .line 184
    move-wide/from16 v21, v9

    .line 185
    .line 186
    move-wide/from16 v23, v7

    .line 187
    .line 188
    move-object/from16 v25, v11

    .line 189
    .line 190
    invoke-direct/range {v15 .. v25}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 191
    .line 192
    .line 193
    iget v0, v2, Lv1/p;->k:I

    .line 194
    .line 195
    move/from16 v18, v0

    .line 196
    .line 197
    iget v0, v2, Lv1/p;->l:I

    .line 198
    .line 199
    move/from16 v19, v0

    .line 200
    .line 201
    iget-wide v0, v2, Lv1/p;->m:J

    .line 202
    .line 203
    move-wide/from16 v20, v0

    .line 204
    .line 205
    iget-wide v0, v2, Lv1/p;->n:J

    .line 206
    .line 207
    move-wide/from16 v22, v0

    .line 208
    .line 209
    iget-wide v0, v2, Lv1/p;->o:J

    .line 210
    .line 211
    move-wide/from16 v24, v0

    .line 212
    .line 213
    iget-wide v0, v2, Lv1/p;->p:J

    .line 214
    .line 215
    move-wide/from16 v26, v0

    .line 216
    .line 217
    iget-boolean v0, v2, Lv1/p;->q:Z

    .line 218
    .line 219
    move/from16 v28, v0

    .line 220
    .line 221
    iget v0, v2, Lv1/p;->r:I

    .line 222
    .line 223
    move/from16 v29, v0

    .line 224
    .line 225
    iget v0, v2, Lv1/p;->s:I

    .line 226
    .line 227
    move/from16 v30, v0

    .line 228
    .line 229
    const/high16 v31, 0x80000

    .line 230
    .line 231
    const/16 v32, 0x0

    .line 232
    .line 233
    move-object v4, v3

    .line 234
    move-object/from16 v7, v42

    .line 235
    .line 236
    move-object/from16 v8, v43

    .line 237
    .line 238
    move-object v9, v12

    .line 239
    move-object/from16 v10, v41

    .line 240
    .line 241
    move-wide/from16 v11, v39

    .line 242
    .line 243
    move-wide/from16 v13, v37

    .line 244
    .line 245
    move-wide/from16 v15, v35

    .line 246
    .line 247
    move-object/from16 v17, v34

    .line 248
    .line 249
    invoke-direct/range {v4 .. v32}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIIII)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v0, p0

    .line 253
    .line 254
    iput-object v3, v0, Lm1/w;->b:Lv1/p;

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lm1/w;->c()Lm1/w;

    .line 257
    .line 258
    .line 259
    return-object v33
.end method

.method public abstract b()Lm1/x;
.end method

.method public abstract c()Lm1/w;
.end method
